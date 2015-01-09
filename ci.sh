#!/bin/bash
#this is where continuous integration script will live
copy_files() {
    local new_copy="$1"
    local old_copy="$2"
    local versioned=`git rev-parse --short HEAD`"_$1"
    if diff "$new_copy" "$old_copy" 2>/dev/null ; then
	echo Same file nothing to do
    else
	echo File changed make copies.
	cp "$1" "$2"
	cp "$1" "/home/gitlab_ci_runner/artifacts/papyrus/build/"`git rev-parse --short HEAD`_"$1"
    fi    
}

git submodule update --init
ls -la
cd hardware
make clean
make CUSTOMPCB="/usr/src/pcb/src/pcb" \
     CUSTOMPCB_ARGS="--photo-mask-colour red \
     --photo-silk-colour white --photo-plating  tinned"
make CUSTOMPCB="/usr/src/pcb/src/pcb" \
     CUSTOMPCB_ARGS="--photo-mask-colour red \
     --photo-silk-colour white  --photo-plating  tinned" photos
ls black_board.png board.png bom order xy schematic.png schematic.pdf gerbers/papyrus_make.bottom.gbr > /dev/null 2>&1
if [ "$?" != "0" ]; then
    echo "I failed to create all the files I should have. build failed"
    exit 1
fi
New_papyrus=`git diff HEAD^ HEAD -- papyrus.pcb|wc -l`
New_schematic=`git diff HEAD^ HEAD -- papyrus.sch|wc -l`

if [ "$New_papyrus" == "0" ]; then
    echo "No changes to papyrus don't bother saving image."
else
    copy_files board.png ~/artifacts/papyrus/board.png
    File=`ls *.zip|grep -v oshpark`
    cp "${File}" gerbers.zip
    copy_files gerbers.zip ~/artifacts/papyrus/gerbers.zip
fi

if [ "$New_schematic" == "0" ]; then
    echo "No changes to schematic don't bother saving the image."
else
    copy_files schematic.png ~/artifacts/papyrus/schematic.png
fi
cd ~/
rsync -Pav ./artifacts rldn.net:~/

