@echo off
echo Deleting prs directory...
rmdir /s /q prs
echo Listing installed Python packages...
python -m pip freeze > installed.txt
echo Uninstalling all Python packages...
for /f "delims=" %%i in (installed.txt) do (
    echo Uninstalling: %%i
    pip uninstall -y %%i
)
del installed.txt
echo Done!
pause