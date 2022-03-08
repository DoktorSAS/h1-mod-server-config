@echo off
::Name of the server shown in the title of the cmd window. This will NOT bet shown ingame.
set name=Frags Fun Land
::Port used by the server (default: 27016)
set port=27017
::Only change this when you don't want to keep the bat files in the game folder. MOST WON'T NEED TO EDIT THIS!
set gamepath=%cd%


title H1-MOD - %name% - Server restarter
echo Server "%name%" will load %cfg% and listen on port %port% UDP!
echo To shut down the server close this window first!
echo (%date%)  -  (%time%) %name% server start.

:server
start /wait /abovenormal h1-mod.exe "%gamepath%" -dedicated +exec "server.cfg" +net_port %port% +map_rotate
echo (%date%)  -  (%time%) WARNING: %name% server closed or dropped... server restarts.
goto server
