v 20130925 2
C 62200 39400 1 0 0 include-1.sym
{
T 62300 39500 5 10 1 1 0 0 1
device=include
T 62200 39700 5 10 1 1 0 0 1
refdes=ICO1
T 62900 39500 5 10 1 1 0 0 1
footprint=oshw
}
C 40300 37800 0 0 0 title-A2.sym
T 56600 38500 14 10 1 0 0 0 1
Papyrus
T 56500 38200 14 7 1 0 0 0 1
http://dev.meatstand.com/meatstand/papyrus.git
T 57600 37900 14 10 1 0 0 0 1
1
T 58100 37900 14 10 1 0 0 0 1
1
T 60500 37900 14 10 1 0 0 0 1
Matthew O'Gorman <mog@rldn.net>
T 60400 38200 14 10 1 0 0 0 1
@version@
T 62000 38200 14 10 1 0 0 0 1
@git@
T 60800 38500 14 10 1 0 0 0 1
This schematic is licensed GPLv3
C 49400 47200 1 0 0 lt3463.sym
{
T 49600 48900 5 10 1 1 0 0 1
name=LT3463
T 51500 48900 5 10 1 1 0 0 1
refdes=U1
T 45400 43800 5 10 0 1 0 0 1
footprint=LT3463
}
C 50200 47000 1 0 0 ground.sym
C 50700 46300 1 0 1 resistor-1.sym
{
T 50400 46700 5 10 0 0 0 6 1
device=RESISTOR
T 50500 46600 5 10 1 1 0 6 1
refdes=R1
T 50000 46400 5 10 1 1 0 6 1
value=10k
T 50700 46300 5 10 0 1 0 0 1
footprint=0805
}
C 51000 46300 1 0 0 resistor-1.sym
{
T 51300 46700 5 10 0 0 0 0 1
device=RESISTOR
T 51200 46600 5 10 1 1 0 0 1
refdes=R2
T 51700 46400 5 10 1 1 0 0 1
value=10k
T 51000 46300 5 10 0 1 0 0 1
footprint=0805
}
C 52200 46200 1 90 0 ground.sym
C 49500 46200 1 270 1 ground.sym
N 51000 47300 51000 46000 4
N 50700 47300 50700 46000 4
C 50600 46000 1 270 0 output-2.sym
{
T 50800 45100 5 10 0 0 270 0 1
net=V-_CONTROL:1
T 51300 45800 5 10 0 0 270 0 1
device=none
T 49300 45500 5 10 1 1 0 1 1
value=V-_CONTROL
}
C 50900 46000 1 270 0 output-2.sym
{
T 51100 45100 5 10 0 0 270 0 1
net=V+_CONTROL:1
T 51600 45800 5 10 0 0 270 0 1
device=none
T 51200 45500 5 10 1 1 0 1 1
value=V+_CONTROL
}
C 48000 47200 1 0 0 inductor-1.sym
{
T 48200 47700 5 10 0 0 0 0 1
device=INDUCTOR
T 47900 47400 5 10 1 1 0 0 1
refdes=L1
T 48200 47900 5 10 0 0 0 0 1
symversion=0.1
T 48200 47100 5 10 1 1 0 0 1
value=10uH
T 48000 47200 5 10 0 1 0 0 1
footprint=4mm_inductor
}
C 46600 46900 1 90 0 capacitor-1.sym
{
T 45900 47100 5 10 0 0 90 0 1
device=CAPACITOR
T 46300 47600 5 10 1 1 180 0 1
refdes=C1
T 45700 47100 5 10 0 0 90 0 1
symversion=0.1
T 46400 47100 5 10 1 1 0 0 1
value=4.7uF
T 46600 46900 5 10 0 1 0 0 1
footprint=0805
}
C 45500 48900 1 180 0 output-2.sym
{
T 44600 48700 5 10 0 0 180 0 1
net=SMPS_CONTROL:1
T 45300 48200 5 10 0 0 180 0 1
device=none
T 43100 48800 5 10 1 1 0 1 1
value=SMPS_CONTROL
}
C 45700 49900 1 90 1 resistor-1.sym
{
T 45300 49600 5 10 0 0 90 6 1
device=RESISTOR
T 45800 49600 5 10 1 1 180 6 1
refdes=R3
T 45100 49600 5 10 1 1 180 6 1
value=10k
T 45700 49900 5 10 0 1 0 0 1
footprint=0805
}
C 46300 51800 1 270 0 input-2.sym
{
T 46500 51800 5 10 0 0 270 0 1
net=Vcc:1
T 47000 51200 5 10 0 0 270 0 1
device=none
T 46400 51300 5 10 1 1 270 7 1
value=Vcc
}
N 46400 50400 46400 49300 4
N 45800 48800 45500 48800 4
N 45600 49900 46400 49900 4
N 45600 49000 45600 48800 4
N 46400 48300 46400 47800 4
C 48000 47800 1 0 0 inductor-1.sym
{
T 48200 48300 5 10 0 0 0 0 1
device=INDUCTOR
T 47900 48000 5 10 1 1 0 0 1
refdes=L2
T 48200 48500 5 10 0 0 0 0 1
symversion=0.1
T 48200 47700 5 10 1 1 0 0 1
value=10uH
T 48000 47800 5 10 0 1 0 0 1
footprint=4mm_inductor
}
C 46600 46600 1 0 1 ground.sym
N 48900 47900 49400 47900 4
N 49400 48400 47600 48400 4
N 47600 48400 47600 47900 4
N 46400 47900 48000 47900 4
N 49200 44900 49200 47700 4
N 49200 47300 48900 47300 4
N 48000 47300 47600 47300 4
N 47600 47300 47600 47900 4
C 53600 45800 1 90 0 capacitor-1.sym
{
T 52900 46000 5 10 0 0 90 0 1
device=CAPACITOR
T 53300 46500 5 10 1 1 180 0 1
refdes=C2
T 52700 46000 5 10 0 0 90 0 1
symversion=0.1
T 53400 46000 5 10 1 1 0 0 1
value=1uF
T 53600 45800 5 10 0 1 0 0 1
footprint=0805
}
N 53400 46700 53400 47800 4
N 53400 47800 51900 47800 4
N 53400 45800 53400 44900 4
N 53400 44900 49200 44900 4
C 54300 46800 1 0 1 diode-1.sym
{
T 53900 47400 5 10 0 0 0 6 1
device=DIODE
T 54000 47300 5 10 1 1 0 6 1
refdes=D1
T 53800 47200 5 10 0 1 0 0 1
footprint=SOD323
}
C 54800 48200 1 90 0 resistor-1.sym
{
T 54400 48500 5 10 0 0 90 0 1
device=RESISTOR
T 54600 48800 5 10 1 1 180 0 1
refdes=R4
T 55100 48800 5 10 1 1 180 0 1
value=10k
T 54800 48200 5 10 0 1 0 0 1
footprint=0805
}
C 54800 47000 1 90 0 resistor-1.sym
{
T 54400 47300 5 10 0 0 90 0 1
device=RESISTOR
T 54600 47600 5 10 1 1 180 0 1
refdes=R5
T 55200 47600 5 10 1 1 180 0 1
value=160k
T 54800 47000 5 10 0 1 0 0 1
footprint=0805
}
N 54300 47000 56700 47000 4
N 54700 48200 54700 47900 4
N 51900 48100 54700 48100 4
N 54700 49100 53900 49100 4
N 53900 49100 53900 48400 4
N 53900 48400 51900 48400 4
C 56300 47000 1 90 0 capacitor-1.sym
{
T 55600 47200 5 10 0 0 90 0 1
device=CAPACITOR
T 56000 47700 5 10 1 1 180 0 1
refdes=C3
T 55400 47200 5 10 0 0 90 0 1
symversion=0.1
T 56100 47200 5 10 1 1 0 0 1
value=4.7uF
T 61200 50700 5 10 0 1 0 0 1
footprint=0805
}
C 56300 48200 1 180 0 ground.sym
C 58100 46900 1 0 1 input-2.sym
{
T 58100 47100 5 10 0 0 0 6 1
net=GVEE-20V:1
T 57500 47600 5 10 0 0 0 6 1
device=none
T 57600 47000 5 10 1 1 0 1 1
value=GVEE-20V
}
C 48800 48700 1 270 1 capacitor-1.sym
{
T 49500 48900 5 10 0 0 90 2 1
device=CAPACITOR
T 49700 48900 5 10 0 0 90 2 1
symversion=0.1
T 49100 49400 5 10 1 1 180 6 1
refdes=C4
T 49000 48900 5 10 1 1 0 6 1
value=4.7uF
T 48800 48700 5 10 0 1 0 0 1
footprint=0805
}
C 48800 49900 1 180 1 ground.sym
C 47200 48600 1 0 0 input-2.sym
{
T 47200 48800 5 10 0 0 0 0 1
net=GVDD+22V:1
T 47800 49300 5 10 0 0 0 0 1
device=none
T 47700 48700 5 10 1 1 0 7 1
value=GVDD+22V
}
N 48600 48700 49400 48700 4
C 53500 53900 1 270 0 input-2.sym
{
T 53700 53900 5 10 0 0 270 0 1
net=GVDD+22V:1
T 54200 53300 5 10 0 0 270 0 1
device=none
T 54700 53100 5 10 1 1 0 7 1
value=GVDD+22V
}
C 53700 51600 1 90 0 resistor-1.sym
{
T 53300 51900 5 10 0 0 90 0 1
device=RESISTOR
T 53500 52200 5 10 1 1 180 0 1
refdes=R6
T 54200 52100 5 10 1 1 180 0 1
value=200k
T 53700 51600 5 10 0 1 0 0 1
footprint=0805
}
C 53700 50300 1 90 0 resistor-1.sym
{
T 53300 50600 5 10 0 0 90 0 1
device=RESISTOR
T 53500 50900 5 10 1 1 180 0 1
refdes=R7
T 54000 50800 5 10 1 1 180 0 1
value=12k
T 53700 50300 5 10 0 1 0 0 1
footprint=0805
}
N 53600 51600 53600 51200 4
C 53400 50000 1 0 0 ground.sym
N 53600 51400 53100 51400 4
N 53100 51400 53100 48700 4
N 53100 48700 51900 48700 4
C 48100 38400 1 0 1 connector20-1.sym
{
T 48000 44600 5 10 1 1 0 6 1
refdes=J1
T 47400 44900 5 10 0 0 0 6 1
device=CONNECTOR_20
T 48100 38400 5 10 0 1 0 0 1
footprint=JUMPER20
}
C 45000 44200 1 0 0 input-2.sym
{
T 45000 44400 5 10 0 0 0 0 1
net=Vcc:1
T 45600 44900 5 10 0 0 0 0 1
device=none
T 45500 44300 5 10 1 1 0 7 1
value=Vcc
}
C 46100 38800 1 270 0 ground.sym
C 58600 52800 1 0 0 MC78L15ACDG.sym
{
T 58800 53900 5 10 1 1 0 0 1
name=MC78L15ACDG
T 60700 53900 5 10 1 1 0 0 1
refdes=U2
T 59700 53400 5 10 0 1 0 0 1
footprint=SO8
}
C 62500 53600 1 0 0 output-2.sym
{
T 63400 53800 5 10 0 0 0 0 1
net=V+15v:1
T 62700 54300 5 10 0 0 0 0 1
device=none
T 63200 53900 5 10 1 1 180 1 1
value=V+15v
}
C 61300 53700 1 270 0 capacitor-1.sym
{
T 62000 53500 5 10 0 0 270 0 1
device=CAPACITOR
T 62200 53500 5 10 0 0 270 0 1
symversion=0.1
T 61600 53000 5 10 1 1 0 0 1
refdes=C5
T 61500 53500 5 10 1 1 180 0 1
value=4.7uF
T 61300 53700 5 10 0 1 0 0 1
footprint=0805
}
C 62200 53700 1 270 0 resistor-1.sym
{
T 62600 53400 5 10 0 0 270 0 1
device=RESISTOR
T 62400 53100 5 10 1 1 0 0 1
refdes=R8
T 61900 53200 5 10 1 1 0 0 1
value=10k
T 62200 53700 5 10 0 1 0 0 1
footprint=0805
}
C 62100 52500 1 0 0 ground.sym
C 61300 52500 1 0 0 ground.sym
N 62500 53700 61100 53700 4
C 59100 52300 1 0 0 ground.sym
N 59000 52800 59000 52600 4
N 59000 52600 59600 52600 4
N 59600 52800 59600 52600 4
N 59400 52800 59400 52600 4
N 59200 52800 59200 52600 4
C 57200 53600 1 0 0 input-2.sym
{
T 57200 53800 5 10 0 0 0 0 1
net=GVDD+22V:1
T 57800 54300 5 10 0 0 0 0 1
device=none
T 57400 53900 5 10 1 1 180 7 1
value=GVDD+22V
}
C 57500 44700 1 0 0 lm358.sym
{
T 57700 45600 5 10 1 1 0 0 1
name=LM358
T 59400 45600 5 10 1 1 0 0 1
refdes=U3
T 58400 45400 5 10 0 1 0 0 1
footprint=SO8
}
C 41400 37800 1 0 1 connector39-2.sym
{
T 40600 54000 5 10 1 1 0 0 1
refdes=CONN1
T 41000 53950 5 10 0 0 0 6 1
device=CONNECTOR_39
T 40800 53500 5 10 0 1 0 0 1
footprint=FH26-39S-03SHW
}
N 49400 47700 49200 47700 4
C 42700 53400 1 0 1 input-2.sym
{
T 42700 53600 5 10 0 0 0 6 1
net=V-15v:1
T 42100 54100 5 10 0 0 0 6 1
device=none
T 42200 53500 5 10 1 1 0 1 1
value=V-15v
}
C 42700 53000 1 0 1 input-2.sym
{
T 42700 53200 5 10 0 0 0 6 1
net=V+15v:1
T 42100 53700 5 10 0 0 0 6 1
device=none
T 42200 53100 5 10 1 1 0 1 1
value=V+15v
}
C 41600 52900 1 90 1 ground.sym
C 42700 52200 1 0 1 input-2.sym
{
T 42700 52400 5 10 0 0 0 6 1
net=EINKVDD:1
T 42100 52900 5 10 0 0 0 6 1
device=none
T 42200 52300 5 10 1 1 0 1 1
value=EINKVDD
}
C 42700 51800 1 0 1 input-2.sym
{
T 42700 52000 5 10 0 0 0 6 1
net=Clock:1
T 42100 52500 5 10 0 0 0 6 1
device=none
T 42200 51900 5 10 1 1 0 1 1
value=Clock
}
C 42700 51400 1 0 1 input-2.sym
{
T 42700 51600 5 10 0 0 0 6 1
net=Latch_enable:1
T 42100 52100 5 10 0 0 0 6 1
device=none
T 42200 51500 5 10 1 1 0 1 1
value=Latch_enable
}
C 42700 51000 1 0 1 input-2.sym
{
T 42700 51200 5 10 0 0 0 6 1
net=Output_enable:1
T 42100 51700 5 10 0 0 0 6 1
device=none
T 42200 51100 5 10 1 1 0 1 1
value=Output_enable
}
C 41600 50900 1 90 1 ground.sym
L 41500 50300 41500 49900 3 0 0 0 -1 -1
L 41500 50300 41800 49900 3 0 0 0 -1 -1
L 41800 49900 41800 50300 3 0 0 0 -1 -1
L 42100 50300 41900 50300 3 0 0 0 -1 -1
L 41800 50000 41800 50100 3 0 0 0 -1 -1
L 41900 49900 41900 50300 3 0 0 0 -1 -1
L 42100 49900 41900 49900 3 0 0 0 -1 -1
C 42700 49400 1 0 1 input-2.sym
{
T 42700 49600 5 10 0 1 0 6 1
net=SPH:1
T 42100 50100 5 10 0 0 0 6 1
device=none
T 42200 49500 5 10 1 1 0 1 1
value=SPH
}
C 42700 49000 1 0 1 input-2.sym
{
T 42700 49200 5 10 0 1 0 6 1
net=D0:1
T 42100 49700 5 10 0 0 0 6 1
device=none
T 42200 49100 5 10 1 1 0 1 1
value=D0
}
C 42700 48600 1 0 1 input-2.sym
{
T 42700 48800 5 10 0 1 0 6 1
net=D1:1
T 42100 49300 5 10 0 0 0 6 1
device=none
T 42200 48700 5 10 1 1 0 1 1
value=D1
}
C 42700 48200 1 0 1 input-2.sym
{
T 42700 48400 5 10 0 1 0 6 1
net=D2:1
T 42100 48900 5 10 0 0 0 6 1
device=none
T 42200 48300 5 10 1 1 0 1 1
value=D2
}
C 42700 47800 1 0 1 input-2.sym
{
T 42700 48000 5 10 0 1 0 6 1
net=D3:1
T 42100 48500 5 10 0 0 0 6 1
device=none
T 42200 47900 5 10 1 1 0 1 1
value=D3
}
C 42700 47400 1 0 1 input-2.sym
{
T 42700 47600 5 10 0 1 0 6 1
net=D4:1
T 42100 48100 5 10 0 0 0 6 1
device=none
T 42200 47500 5 10 1 1 0 1 1
value=D4
}
C 42700 47000 1 0 1 input-2.sym
{
T 42700 47200 5 10 0 1 0 6 1
net=D5:1
T 42100 47700 5 10 0 0 0 6 1
device=none
T 42200 47100 5 10 1 1 0 1 1
value=D5
}
C 42700 46600 1 0 1 input-2.sym
{
T 42700 46800 5 10 0 1 0 6 1
net=D6:1
T 42100 47300 5 10 0 0 0 6 1
device=none
T 42200 46700 5 10 1 1 0 1 1
value=D6
}
C 42700 46200 1 0 1 input-2.sym
{
T 42700 46400 5 10 0 1 0 6 1
net=D7:1
T 42100 46900 5 10 0 0 0 6 1
device=none
T 42200 46300 5 10 1 1 0 1 1
value=D7
}
L 41500 45900 41500 45500 3 0 0 0 -1 -1
L 41500 45900 41800 45500 3 0 0 0 -1 -1
L 41800 45500 41800 45900 3 0 0 0 -1 -1
L 42100 45900 41900 45900 3 0 0 0 -1 -1
L 41800 45600 41800 45700 3 0 0 0 -1 -1
L 41900 45500 41900 45900 3 0 0 0 -1 -1
L 42100 45500 41900 45500 3 0 0 0 -1 -1
C 42700 45000 1 0 1 input-2.sym
{
T 42700 45200 5 10 0 1 0 6 1
net=Vcom:1
T 42100 45700 5 10 0 0 0 6 1
device=none
T 42200 45100 5 10 1 1 0 1 1
value=Vcom
}
C 42700 44600 1 0 1 input-2.sym
{
T 42700 44800 5 10 0 0 0 6 1
net=GVDD+22V:1
T 42100 45300 5 10 0 0 0 6 1
device=none
T 43200 44700 5 10 1 1 180 1 1
value=GVDD+22V
}
C 42700 44200 1 0 1 input-2.sym
{
T 42700 44400 5 10 0 0 0 6 1
net=GVEE-20V:1
T 42100 44900 5 10 0 0 0 6 1
device=none
T 42200 44300 5 10 1 1 0 1 1
value=GVEE-20V
}
L 41500 43900 41500 43500 3 0 0 0 -1 -1
L 41500 43900 41800 43500 3 0 0 0 -1 -1
L 41800 43500 41800 43900 3 0 0 0 -1 -1
L 42100 43900 41900 43900 3 0 0 0 -1 -1
L 41800 43600 41800 43700 3 0 0 0 -1 -1
L 41900 43500 41900 43900 3 0 0 0 -1 -1
L 42100 43500 41900 43500 3 0 0 0 -1 -1
C 41600 42500 1 90 1 ground.sym
C 42700 41800 1 0 1 input-2.sym
{
T 42700 42000 5 10 0 0 0 6 1
net=EINKVDD:1
T 42100 42500 5 10 0 0 0 6 1
device=none
T 42200 41900 5 10 1 1 0 1 1
value=EINKVDD
}
C 41600 41700 1 90 1 ground.sym
C 42700 41000 1 0 1 input-2.sym
{
T 42700 41200 5 10 0 1 0 6 1
net=SPV1:1
T 42100 41700 5 10 0 0 0 6 1
device=none
T 42200 41100 5 10 1 1 0 1 1
value=SPV1
}
C 42700 40600 1 0 1 input-2.sym
{
T 42700 40800 5 10 0 1 0 6 1
net=CKV1:1
T 42100 41300 5 10 0 0 0 6 1
device=none
T 42200 40700 5 10 1 1 0 1 1
value=CKV1
}
C 42700 39800 1 0 1 input-2.sym
{
T 42700 40000 5 10 0 0 0 6 1
net=EINKVDD:1
T 42100 40500 5 10 0 0 0 6 1
device=none
T 42200 39900 5 10 1 1 0 1 1
value=EINKVDD
}
C 42700 39400 1 0 1 input-2.sym
{
T 42700 39600 5 10 0 0 0 6 1
net=EINKVDD:1
T 42100 40100 5 10 0 0 0 6 1
device=none
T 42200 39500 5 10 1 1 0 1 1
value=EINKVDD
}
C 42700 39000 1 0 1 input-2.sym
{
T 42700 39200 5 10 0 1 0 6 1
net=SPV2:1
T 42100 39700 5 10 0 0 0 6 1
device=none
T 42200 39100 5 10 1 1 0 1 1
value=SPV2
}
C 42700 38600 1 0 1 input-2.sym
{
T 42700 38800 5 10 0 1 0 6 1
net=CKV2:1
T 42100 39300 5 10 0 0 0 6 1
device=none
T 42200 38700 5 10 1 1 0 1 1
value=CKV2
}
L 41400 38500 41400 38100 3 0 0 0 -1 -1
L 41400 38500 41700 38100 3 0 0 0 -1 -1
L 41700 38100 41700 38500 3 0 0 0 -1 -1
L 42000 38500 41800 38500 3 0 0 0 -1 -1
L 41700 38200 41700 38300 3 0 0 0 -1 -1
L 41800 38100 41800 38500 3 0 0 0 -1 -1
L 42000 38100 41800 38100 3 0 0 0 -1 -1
T 41400 54000 9 10 1 0 0 0 1
ED060SC4 Connector
C 53800 38400 1 0 1 connector20-1.sym
{
T 53700 44600 5 10 1 1 0 6 1
refdes=J2
T 53100 44900 5 10 0 0 0 6 1
device=CONNECTOR_20
T 53800 38400 5 10 0 1 0 0 1
footprint=JUMPER20
}
C 50700 44200 1 0 0 input-2.sym
{
T 50700 44400 5 10 0 1 0 0 1
net=D0:1
T 51300 44900 5 10 0 0 0 0 1
device=none
T 51200 44300 5 10 1 1 0 7 1
value=D0
}
C 50700 43900 1 0 0 input-2.sym
{
T 50700 44100 5 10 0 1 0 0 1
net=D1:1
T 51300 44600 5 10 0 0 0 0 1
device=none
T 51200 44000 5 10 1 1 0 7 1
value=D1
}
C 50700 43600 1 0 0 input-2.sym
{
T 51200 43700 5 10 1 1 0 7 1
value=D2
T 50700 43800 5 10 0 1 0 0 1
net=D2:1
T 51300 44300 5 10 0 0 0 0 1
device=none
}
C 50700 43000 1 0 0 input-2.sym
{
T 50700 43200 5 10 0 1 0 0 1
net=D4:1
T 51300 43700 5 10 0 0 0 0 1
device=none
T 51200 43100 5 10 1 1 0 7 1
value=D4
}
C 50700 43300 1 0 0 input-2.sym
{
T 51200 43400 5 10 1 1 0 7 1
value=D3
T 50700 43500 5 10 0 1 0 0 1
net=D3:1
T 51300 44000 5 10 0 0 0 0 1
device=none
}
C 50700 42700 1 0 0 input-2.sym
{
T 50700 42900 5 10 0 1 0 0 1
net=D5:1
T 51300 43400 5 10 0 0 0 0 1
device=none
T 51200 42800 5 10 1 1 0 7 1
value=D5
}
C 50700 42100 1 0 0 input-2.sym
{
T 50700 42300 5 10 0 1 0 0 1
net=D7:1
T 51300 42800 5 10 0 0 0 0 1
device=none
T 51200 42200 5 10 1 1 0 7 1
value=D7
}
C 50700 42400 1 0 0 input-2.sym
{
T 50700 42600 5 10 0 1 0 0 1
net=D6:1
T 51300 43100 5 10 0 0 0 0 1
device=none
T 51200 42500 5 10 1 1 0 7 1
value=D6
}
C 50700 41800 1 0 0 input-2.sym
{
T 50700 42000 5 10 0 1 0 0 1
net=SPH:1
T 51300 42500 5 10 0 0 0 0 1
device=none
T 51200 41900 5 10 1 1 0 7 1
value=SPH
}
C 50700 41200 1 0 0 input-2.sym
{
T 50700 41400 5 10 0 1 0 0 1
net=Latch_enable:1
T 51300 41900 5 10 0 0 0 0 1
device=none
T 51200 41300 5 10 1 1 0 7 1
value=Latch_enable
}
C 50700 41500 1 0 0 input-2.sym
{
T 50700 41700 5 10 0 1 0 0 1
net=Output_enable:1
T 51300 42200 5 10 0 0 0 0 1
device=none
T 51200 41600 5 10 1 1 0 7 1
value=Output_enable
}
C 50700 40900 1 0 0 input-2.sym
{
T 50700 41100 5 10 0 1 0 0 1
net=Clock:1
T 51300 41600 5 10 0 0 0 0 1
device=none
T 51200 41000 5 10 1 1 0 7 1
value=Clock
}
C 50700 40600 1 0 0 input-2.sym
{
T 50700 40800 5 10 0 1 0 0 1
net=Gmode:1
T 51300 41300 5 10 0 0 0 0 1
device=none
T 51200 40700 5 10 1 1 0 7 1
value=Gmode
}
C 50700 40300 1 0 0 input-2.sym
{
T 50700 40500 5 10 0 0 0 0 1
net=EINKVDD:1
T 51300 41000 5 10 0 0 0 0 1
device=none
T 51200 40400 5 10 1 1 0 7 1
value=EINKVDD
}
C 50700 40000 1 0 0 input-2.sym
{
T 50700 40200 5 10 0 0 0 0 1
net=V+_CONTROL:1
T 51300 40700 5 10 0 0 0 0 1
device=none
T 51200 40100 5 10 1 1 0 7 1
value=V+_CONTROL
}
C 50700 39700 1 0 0 input-2.sym
{
T 50700 39900 5 10 0 0 0 0 1
net=V-_CONTROL:1
T 51300 40400 5 10 0 0 0 0 1
device=none
T 51200 39800 5 10 1 1 0 7 1
value=V-_CONTROL
}
C 50700 39400 1 0 0 input-2.sym
{
T 50700 39600 5 10 0 1 0 0 1
net=SPV:1
T 51300 40100 5 10 0 0 0 0 1
device=none
T 51200 39500 5 10 1 1 0 7 1
value=SPV
}
C 50700 39100 1 0 0 input-2.sym
{
T 50700 39300 5 10 0 1 0 0 1
net=CKV:1
T 51300 39800 5 10 0 0 0 0 1
device=none
T 51200 39200 5 10 1 1 0 7 1
value=CKV
}
C 51800 38800 1 270 0 ground.sym
C 50700 38800 1 0 0 input-2.sym
{
T 50700 39000 5 10 0 0 0 0 1
net=SMPS_CONTROL:1
T 51300 39500 5 10 0 0 0 0 1
device=none
T 51200 38900 5 10 1 1 0 7 1
value=SMPS_CONTROL
}
C 45000 43900 1 0 0 input-2.sym
{
T 45000 44100 5 10 0 0 0 0 1
net=V-15v:1
T 45600 44600 5 10 0 0 0 0 1
device=none
T 45500 44000 5 10 1 1 0 7 1
value=V-15v
}
C 45000 43600 1 0 0 input-2.sym
{
T 45000 43800 5 10 0 0 0 0 1
net=V+15v:1
T 45600 44300 5 10 0 0 0 0 1
device=none
T 45500 43700 5 10 1 1 0 7 1
value=V+15v
}
C 45000 43000 1 0 0 input-2.sym
{
T 45000 43200 5 10 0 0 0 0 1
net=GVEE-20V:1
T 45600 43700 5 10 0 0 0 0 1
device=none
T 45500 43100 5 10 1 1 0 7 1
value=GVEE-20V
}
C 45000 43500 1 180 1 input-2.sym
{
T 45000 43300 5 10 0 0 180 6 1
net=GVDD+22V:1
T 45600 42800 5 10 0 0 180 6 1
device=none
T 44500 43400 5 10 1 1 0 1 1
value=GVDD+22V
}
C 45000 42700 1 0 0 input-2.sym
{
T 45000 42900 5 10 0 1 0 0 1
net=Vcom:1
T 45600 43400 5 10 0 0 0 0 1
device=none
T 45500 42800 5 10 1 1 0 7 1
value=Vcom
}
C 57000 49300 1 0 0 input-2.sym
{
T 57000 49500 5 10 0 0 0 0 1
net=GVEE-20V:1
T 57600 50000 5 10 0 0 0 0 1
device=none
T 57500 49400 5 10 1 1 0 7 1
value=GVEE-20V
}
C 58200 49800 1 0 0 MC79L15ACDG.sym
{
T 59300 50400 5 10 0 1 0 0 1
footprint=SO8
T 58400 50900 5 10 1 1 0 0 1
name=MC79L15ACDG
T 60300 50900 5 10 1 1 0 0 1
refdes=U4
}
C 61300 50700 1 90 0 capacitor-1.sym
{
T 60600 50900 5 10 0 0 90 0 1
device=CAPACITOR
T 60400 50900 5 10 0 0 90 0 1
symversion=0.1
T 61000 51400 5 10 1 1 180 0 1
refdes=C6
T 61100 50900 5 10 1 1 0 0 1
value=4.7uF
T 61300 50700 5 10 0 1 0 0 1
footprint=0805
}
C 62400 50700 1 90 0 resistor-1.sym
{
T 62000 51000 5 10 0 0 90 0 1
device=RESISTOR
T 62200 51300 5 10 1 1 180 0 1
refdes=R9
T 62700 51200 5 10 1 1 180 0 1
value=10k
T 62400 50700 5 10 0 1 0 0 1
footprint=0805
}
C 62700 50600 1 0 0 output-2.sym
{
T 63600 50800 5 10 0 0 0 0 1
net=V-15v:1
T 62900 51300 5 10 0 0 0 0 1
device=none
T 63400 50900 5 10 1 1 180 1 1
value=V-15v
}
C 62500 51900 1 180 0 ground.sym
C 61300 51900 1 180 0 ground.sym
C 57900 50900 1 270 0 ground.sym
N 59200 49400 59200 49800 4
N 59000 49400 59000 49800 4
N 58800 49400 58800 49800 4
N 58600 49400 58600 49800 4
N 62700 50700 60700 50700 4
N 58400 49400 59200 49400 4
C 61200 44700 1 0 1 input-2.sym
{
T 61200 44900 5 10 0 0 0 6 1
net=V+15v:1
T 60600 45400 5 10 0 0 0 6 1
device=none
T 60700 44800 5 10 1 1 0 1 1
value=V+15v
}
C 61200 44900 1 0 1 input-2.sym
{
T 61200 45100 5 10 0 0 0 6 1
net=V-15v:1
T 60600 45600 5 10 0 0 0 6 1
device=none
T 60700 45000 5 10 1 1 0 1 1
value=V-15v
}
C 59800 45300 1 0 0 output-2.sym
{
T 60700 45500 5 10 0 0 0 0 1
net=Vcom:1
T 60000 46000 5 10 0 0 0 0 1
device=none
T 61100 45400 5 10 1 1 180 1 1
value=Vcom
}
C 55200 44700 1 270 0 resistor-1.sym
{
T 55600 44400 5 10 0 0 270 0 1
device=RESISTOR
T 54900 44000 5 10 1 1 0 0 1
refdes=R10
T 55400 44000 5 10 1 1 0 0 1
value=47k
T 55200 44700 5 10 0 1 0 0 1
footprint=0805
}
C 55200 42400 1 270 1 input-2.sym
{
T 55400 42400 5 10 0 0 270 6 1
net=V-15v:1
T 55900 43000 5 10 0 0 270 6 1
device=none
T 55300 42900 5 10 1 1 270 1 1
value=V-15v
}
C 55200 44700 1 270 1 pot-1.sym
{
T 56100 45500 5 10 0 0 270 6 1
device=VARIABLE_RESISTOR
T 55100 45300 5 10 1 1 0 6 1
refdes=R11
T 55500 45200 5 10 1 1 0 0 1
value=10k
T 55400 45100 5 10 0 1 0 0 1
footprint=10kpot
}
C 55100 45900 1 180 1 ground.sym
N 57500 45200 55800 45200 4
C 56100 45300 1 0 0 input-2.sym
{
T 56100 45500 5 10 0 1 0 0 1
net=Vcom:1
T 56700 46000 5 10 0 0 0 0 1
device=none
T 56600 45400 5 10 1 1 0 7 1
value=Vcom
}
C 45000 42100 1 0 0 input-2.sym
{
T 45000 42300 5 10 0 1 0 0 1
net=Gmode:1
T 45600 42800 5 10 0 0 0 0 1
device=none
T 45500 42200 5 10 1 1 0 7 1
value=Gmode
}
C 45000 41500 1 0 0 input-2.sym
{
T 45000 41700 5 10 0 1 0 0 1
net=Gmode:1
T 45600 42200 5 10 0 0 0 0 1
device=none
T 45500 41600 5 10 1 1 0 7 1
value=Gmode
}
C 42700 43000 1 0 1 input-2.sym
{
T 42700 43200 5 10 0 1 0 6 1
net=Gmode1:1
T 42100 43700 5 10 0 0 0 6 1
device=none
T 42200 43100 5 10 1 1 0 1 1
value=Gmode1
}
C 42700 42600 1 0 1 input-2.sym
{
T 42700 42800 5 10 0 1 0 6 1
net=Gmode2:1
T 42100 43300 5 10 0 0 0 6 1
device=none
T 42200 42700 5 10 1 1 0 1 1
value=Gmode2
}
C 45000 42400 1 0 0 input-2.sym
{
T 45000 42600 5 10 0 1 0 0 1
net=Gmode1:1
T 45600 43100 5 10 0 0 0 0 1
device=none
T 45500 42500 5 10 1 1 0 7 1
value=Gmode1
}
C 45000 41800 1 0 0 input-2.sym
{
T 45000 42000 5 10 0 1 0 0 1
net=Gmode2:1
T 45600 42500 5 10 0 0 0 0 1
device=none
T 45500 41900 5 10 1 1 0 7 1
value=Gmode2
}
C 45000 40900 1 0 0 input-2.sym
{
T 45000 41100 5 10 0 1 0 0 1
net=SPV:1
T 45600 41600 5 10 0 0 0 0 1
device=none
T 45500 41000 5 10 1 1 0 7 1
value=SPV
}
C 45000 40300 1 0 0 input-2.sym
{
T 45000 40500 5 10 0 1 0 0 1
net=SPV:1
T 45600 41000 5 10 0 0 0 0 1
device=none
T 45500 40400 5 10 1 1 0 7 1
value=SPV
}
C 45000 40600 1 0 0 input-2.sym
{
T 45000 40800 5 10 0 1 0 0 1
net=SPV2:1
T 45600 41300 5 10 0 0 0 0 1
device=none
T 45500 40700 5 10 1 1 0 7 1
value=SPV2
}
C 45000 41200 1 0 0 input-2.sym
{
T 45000 41400 5 10 0 1 0 0 1
net=SPV1:1
T 45600 41900 5 10 0 0 0 0 1
device=none
T 45500 41300 5 10 1 1 0 7 1
value=SPV1
}
C 45000 39400 1 0 0 input-2.sym
{
T 45000 39600 5 10 0 1 0 0 1
net=CKV2:1
T 45600 40100 5 10 0 0 0 0 1
device=none
T 45500 39500 5 10 1 1 0 7 1
value=CKV2
}
C 45000 40000 1 0 0 input-2.sym
{
T 45000 40200 5 10 0 1 0 0 1
net=CKV1:1
T 45600 40700 5 10 0 0 0 0 1
device=none
T 45500 40100 5 10 1 1 0 7 1
value=CKV1
}
C 45000 39700 1 0 0 input-2.sym
{
T 45000 39900 5 10 0 1 0 0 1
net=CKV:1
T 45600 40400 5 10 0 0 0 0 1
device=none
T 45500 39800 5 10 1 1 0 7 1
value=CKV
}
C 45000 39100 1 0 0 input-2.sym
{
T 45000 39300 5 10 0 1 0 0 1
net=CKV:1
T 45600 39800 5 10 0 0 0 0 1
device=none
T 45500 39200 5 10 1 1 0 7 1
value=CKV
}
C 42700 40200 1 0 1 input-2.sym
{
T 42700 40400 5 10 0 1 0 6 1
net=VBORDER:1
T 42100 40900 5 10 0 0 0 6 1
device=none
T 42200 40300 5 10 1 1 0 1 1
value=VBORDER
}
C 45000 38800 1 0 0 input-2.sym
{
T 45000 39000 5 10 0 1 0 0 1
net=VBORDER:1
T 45600 39500 5 10 0 0 0 0 1
device=none
T 45500 38900 5 10 1 1 0 7 1
value=VBORDER
}
C 45800 49300 1 180 1 npn-3.sym
{
T 46700 48800 5 10 0 0 180 6 1
device=NPN_TRANSISTOR
T 45800 49200 5 10 1 1 180 6 1
refdes=Q1
T 46200 48700 5 10 0 1 180 6 1
footprint=SOT23
T 46200 48900 5 10 0 1 0 0 1
footprint=SOT23
}
