@echo off
set "ROOT_DIR=%~dp0ObvRemaster_env"
set "INI_DIR=%USERPROFILE%\Documents\My Games\Oblivion"
set "INI_FILE=%INI_DIR%\Oblivion.ini"

echo Creating sandbox at: %ROOT_DIR%
mkdir "%ROOT_DIR%\Data"

echo Creating dummy Oblivion.exe...
echo. > "%ROOT_DIR%\Oblivion.exe"

echo Checking for existing Oblivion.ini...
if exist "%INI_FILE%" (
    echo Found existing Oblivion.ini. Skipping creation.
) else (
    echo No Oblivion.ini found. Creating minimal ini...
    mkdir "%INI_DIR%" >nul 2>&1
    (
        echo [General]
        echo SMainMasterFile=Oblivion.esm
        echo bAllowMultipleMasterLoads=1
        echo [Display]
        echo fDefaultFOV=75
        echo [Archive]
        echo SInvalidationFile=ArchiveInvalidation.txt
    ) > "%INI_FILE%"
)

echo.
echo Now copy your .esm file to:
echo    "%ROOT_DIR%\Data\Oblivion.esm"
echo.

echo Then run TES4Edit or TESCS from this directory to test mods safely.
pause
