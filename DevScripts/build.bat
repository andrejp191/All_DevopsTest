@echo on
@echo "Starting Build"
set "cur_dir=%CD%"

cd /d m:\DevScripts\Build\VS_Tools
call callvcvarsall.bat x64

dir *.*
cd /d "%cur_dir%"
dir *.*
cd /D ..\Projects\ConsoleApplicationCPP
msbuild ConsoleApplicationCPP.vcxproj

@echo "Finishing Build"