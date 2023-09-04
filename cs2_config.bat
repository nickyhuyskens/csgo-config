@ECHO OFF
setlocal EnableExtensions EnableDelayedExpansion

rem Default download location
set "DefaultDownloadLocation=C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\game\csgo\cfg"

set /P "DownloadLocation=Enter the download location (press Enter for default location '%DefaultDownloadLocation%'): "
if "%DownloadLocation%"=="" set "DownloadLocation=%DefaultDownloadLocation%"

curl https://raw.githubusercontent.com/nickyhuyskens/csgo-config/main/cs2config.cfg -o "%DownloadLocation%"\autoexec.cfg
ECHO Downloaded autoexec.cfg to %DownloadLocation%

rem ...

choice /C YN /M "Do you want to open the file in notepad? (Y/N) [Y]: "
if errorlevel 2 (
  echo "Ok bye."
  PAUSE
) else (
  notepad "%DownloadLocation%"\autoexec.cfg
)

endlocal
