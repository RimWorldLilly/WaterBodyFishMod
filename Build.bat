@echo off
setlocal
cd /d "%~dp0"

set "GAME_DIR=%RIMWORLD_DIR%"
if "%GAME_DIR%"=="" set "GAME_DIR=G:\SteamLibrary\steamapps\common\RimWorld"

set "HARMONY_DLL=%HARMONY_DLL%"
if "%HARMONY_DLL%"=="" set "HARMONY_DLL=G:\SteamLibrary\steamapps\workshop\content\294100\2009463077\1.7\Assemblies\0Harmony.dll"

if not exist "%GAME_DIR%\Assembly-CSharp.dll" (
    echo ERROR: Assembly-CSharp.dll was not found:
    echo "%GAME_DIR%\Assembly-CSharp.dll"
    echo Set RIMWORLD_DIR to your RimWorld installation folder.
    exit /b 1
)

if not exist "%GAME_DIR%\UnityStubs.dll" (
    echo ERROR: UnityStubs.dll was not found:
    echo "%GAME_DIR%\UnityStubs.dll"
    echo Check RIMWORLD_DIR.
    exit /b 1
)

if not exist "%HARMONY_DLL%" (
    echo ERROR: 0Harmony.dll was not found:
    echo "%HARMONY_DLL%"
    echo Set HARMONY_DLL to the full path of 0Harmony.dll.
    exit /b 1
)

where dotnet >nul 2>&1
if errorlevel 1 (
    echo ERROR: .NET SDK 10 is required.
    exit /b 1
)

dotnet build "%~dp0Source\WaterBodyFishMod.csproj" --configuration Release --nologo -p:GameDir="%GAME_DIR%" -p:HarmonyDll="%HARMONY_DLL%"
if errorlevel 1 (
    echo.
    echo Build failed.
    exit /b 1
)

echo.
echo Build succeeded:
echo %~dp0Assemblies\WaterBodyFishMod.dll
exit /b 0
