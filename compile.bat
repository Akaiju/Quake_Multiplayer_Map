@echo off

cd\
cd C:\Users\jackb\Documents\quake-leveldesign-starterkit-master


echo Copying Files...
copy C:\Users\jackb\Documents\quake-leveldesign-starterkit-master\id1\maps\DemoMap.map C:\Users\jackb\Documents\quake-leveldesign-starterkit-master


echo Converting map...


echo --------------QBSP--------------
C:\Users\jackb\Documents\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\qbsp.exe DemoMap

echo --------------VIS---------------
C:\Users\jackb\Documents\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\vis.exe DemoMap

echo -------------LIGHT--------------
C:\Users\jackb\Documents\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\light.exe DemoMap

copy DemoMap.bsp C:\Users\jackb\Documents\quake-leveldesign-starterkit-master\id1\maps
copy DemoMap.pts C:\Users\jackb\Documents\quake-leveldesign-starterkit-master\id1\maps
copy DemoMap.lit C:\Users\jackb\Documents\quake-leveldesign-starterkit-master\id1\maps
pause
cd\
cd C:\Users\jackb\Documents\quake-leveldesign-starterkit-master
quakespasm  +map DemoMap
