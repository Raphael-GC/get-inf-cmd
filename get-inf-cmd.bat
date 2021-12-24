@echo OFF
color 06
cd %userprofile%

echo Foi criado o arquivo InfosDoPC-%COMPUTERNAME%.txt em sua area de trabalho!


echo Informacoes da Maquina >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt
echo ---------------------------- >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt
echo. >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt
echo Hostname: >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt
HOSTNAME >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt
echo. >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt

echo Versao do Windows: >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt
wmic os get Caption | findstr /v Caption >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt

echo Idioma: >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt
wmic os get MUILanguages | findstr /v MUILanguages >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt

echo Arquitetura: >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt
wmic os get OSArchitecture | findstr /v OSArchitecture >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt

echo SerialNumber: >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt
wmic bios get serialnumber | findstr /v SerialNumber >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt

echo Licenca do Windows: >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt
wmic path softwarelicensingservice get OA3xOriginalProductKey | findstr /v OA3xOriginalProductKey >> C:Desktop\InfosDoPC-%COMPUTERNAME%.txt

pause
