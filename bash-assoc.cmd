@echo off
SetLocal EnableDelayedExpansion

set drive=%~d1
set drive=%drive:~0,1%
set path=%~p1

:: Convert \ to /
call set path=%%path:\=/%%

:: Convert drive to lowercase
for %%i in (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z) do (
	set drive=!drive:%%i=%%i%!
)

:: The new path is this
set path="/mnt/%drive%%path%%~n1%~x1"

:: Go!
%systemroot%\system32\bash.exe %path%
