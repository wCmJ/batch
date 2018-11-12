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


Batch Commands: not case-sensitive/all variables belong to the type string, no numeric type, no arithmetic operations/simple and primitive flow control constructs are supported.
    rem message: comment
    pause: suspends execution of the batch program and displays the message "Press any key to continue"
    echo message: displays the specified message. to display a blank line, use echo.
    echo on|off: @echo off disables display for this echo command and subsequent batch commands.
    echo %VARIABLE%: displays the value of an environment variable
    
    for variable in (set) do command:
        for %f in (*.doc *.txt) do type %f
        for /F "tokens=1-4" %%I in ('svn info %DIRECTORY%') do @if "%%I"="Last" if "%%J"="Changed" if "%%K"="Rev:" set MV=%%L
    
    
    
    
    
    
