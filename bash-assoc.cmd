@echo off
set drive=%~d1
set drive=%drive:~0,1%
set path=%~p1

:: Convert \ to /
call set path=%%path:\=/%%

:: Convert drive to lowercase
for %%i in ("A=a" "B=b" "C=c" "D=d" "E=e" "F=f" "G=g" "H=h" "I=i" "J=j" "K=k" "L=l" "M=m" "N=n" "O=o" "P=p" "Q=q" "R=r" "S=s" "T=t" "U=u" "V=v" "W=w" "X=x" "Y=y" "Z=z") do call set "drive=%%drive:%%~i%%"

:: The new path is this
set path="/mnt/%drive%%path%%~n1%~x1"

:: Go!
%systemroot%\system32\bash.exe %path%
