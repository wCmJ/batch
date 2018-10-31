@set a=1
set b=2
difference: set b=2 will be displayed in the screen, while set a=1 will not be.

cd ..\..
@set ABC=.
@set MAKE=MSBuild
@set ISMAKE=iscmdbld

rem this is comment
@for /F "tokens=1-4" %%I in ('svn info %ABC') do @if "%%I"=="Last" if "%%J"=="Changed" if "%%K"=="Rev:" set VERSION=%%L
:DoBuild
@echo Backup the files...
copy %PARAM1% %PARAM%
copy %PARAM2% %PARAM21%

C:\"Program Files"\GnuWin32\bin\sed -e "s/@full_version@/%FULL_VERSION%/g" -i %PARAM1%


