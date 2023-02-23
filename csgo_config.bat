@ECHO OFF
setlocal EnableExtensions EnableDelayedExpansion
curl https://raw.githubusercontent.com/nickyhuyskens/csgo-config/main/autoexec.cfg -o "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\autoexec.cfg"
ECHO Downloaded autoexec.cfg to C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\autoexec.cfg
rem ...
set "UserChoice=no"
set /P "UserChoice=Do you want to open the file in notepad? (yes/no): "
if "!UserChoice!" == "yes" or "!UserChoice!" == "y" (
  notepad "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\autoexec.cfg"
)
if not "!UserChoice!" == "yes" (
  echo "Ok bye."
  PAUSE
)
endlocal