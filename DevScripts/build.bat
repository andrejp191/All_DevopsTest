@echo on
@echo "Starting Build"
set "cur_dir=%CD%"

cd /d m:\DevScripts\Build\VS_Tools
call callvcvarsall.bat x64

set path=%path%;C:\Users\apollak\AppData\Local\GitHubDesktop\app-3.4.18\resources\app\git\cmd
cd /D D:\GitHub\All_DevopsTest
git pull origin Devops

cd Projects\ConsoleApplicationCPP
msbuild ConsoleApplicationCPP.vcxproj

cd /d "%cur_dir%"
@echo "Finishing Build"