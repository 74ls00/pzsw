set prodir=G:\home\Documents\Projects\autoit\pz\src
set outdir=G:\home\Documents\Projects\autoit\pz\src\build
set autoitdir="T:\Program Files (x86)\AutoIt3\"

set prun=pz404
set pavt=pzavt2


tskill %prun%
tskill %pavt%

del %prodir%\build\%prun%.exe
del %prodir%\build\%pavt%.exe
del %prodir%\build\%pavt%.lib

start /d %autoitdir%\Aut2Exe Aut2exe.exe /in %prodir%\pzrun.au3 /out %prodir%\build\%prun%.exe /icon %prodir%\res\pzrun.ico /x86

rem start /d %autoitdir%\Aut2Exe Aut2exe.exe /in %prodir%\pzavt.au3 /out %prodir%\build\%pavt%.exe /x86 /pack /comp 4 
rem /icon %prodir%\pzavt.ico 

rem start /d %autoitdir%\Aut2Exe Aut2exe.exe /in %prodir%\0.au3 /out %prodir%\build\0.exe /x86 /pack /comp 4 

rem ping -n 3 -w 1000 127.0.0.1 > nul
rem move /Y %pavt%.exe %pavt%.lib

