clear
echo "****************** UTILIDAD PARA DESINSTALAR ADOBE ****************"
echo
echo
echo ESTAS SEGURO DE DESINSTALAR TODO ADOBE?
echo
echo "SI TIENE PRESETS, PROCEDA A BACKUPEAR ANTES DE CONTINUAR ..!"
echo 
echo "ENTER PARA CONTINUAR, CTL-C PARA CANCELAR ..."
echo
read
echo "Ingrese el password de su Mac:"
echo
sudo echo
sudo killall ACCFinderSync “Core Sync” AdobeCRDaemon “Adobe Creative” AdobeIPCBroker node “Adobe Desktop Service” “Adobe Crash Reporter”
sudo kill -9 $(ps ax | grep Adobe | awk '{print $1}') &>/dev/null
sudo rm -dfrv /Applications/Adobe*
sudo rm -dfrv /Applications/Utilities/Adobe*
sudo rm -dfrv “/Library/Caches/.”* “/private/tmp/zx”* 
sudo rm -dfrv /Library/Application\ Support/Adobe
sudo rm -dfrv /Library/Application\ Support/regid*
sudo rm -dfrv /var/root/Library/Application\ Support/Adobe
sudo rm -dfrv /Users/*/Library/Application\ Support/Adobe /Users/*/Library/Preferences/Adobe
echo
echo "******************* SUITE ADOBE CC DESINSTALADO *******************"


