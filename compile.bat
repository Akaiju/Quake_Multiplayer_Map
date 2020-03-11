@echo off

cd\
cd C:\Users\jackb\Desktop\Quake_Multiplayer_Map


echo Copying Files...
copy C:\Users\jackb\Desktop\Quake_Multiplayer_Map\maps\LayeredReality.map C:\Users\jackb\Desktop\Quake_Multiplayer_Map


echo Converting map...


echo --------------QBSP--------------
C:\Users\jackb\Desktop\Quake_Multiplayer_Map\tools\ericw-tools\bin\qbsp.exe LayeredReality

echo --------------VIS---------------
C:\Users\jackb\Desktop\Quake_Multiplayer_Map\tools\ericw-tools\bin\vis.exe LayeredReality

echo -------------LIGHT--------------
C:\Users\jackb\Desktop\Quake_Multiplayer_Map\tools\ericw-tools\bin\light.exe LayeredReality

copy LayeredReality.bsp C:\Users\jackb\Desktop\Quake_Multiplayer_Map\id1\maps
copy LayeredReality.pts C:\Users\jackb\Desktop\Quake_Multiplayer_Map\id1\maps
copy LayeredReality.lit C:\Users\jackb\Desktop\Quake_Multiplayer_Map\id1\maps
pause
cd\
cd C:\Users\jackb\Desktop\Quake_Multiplayer_Map
quakespasm  +map LayeredReality
