@echo "Starting Build"
set "cur_dir=%CD%"

cd /d m: m:\DevScripts\Build\VS_Tools\
callvcvarsall.bat x64

cd /d "%OLDDIR%"
cd Projects\ConsoleApplicationCPP
devenv ConsoleApplicationCPP.vcxproj

@echo "Finishing Build"