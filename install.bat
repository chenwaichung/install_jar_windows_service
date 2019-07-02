@echo off

cd /d "%~dp0"

set PR_PATH=%CD%
echo %PR_PATH%

nssm install tcpServerDemo "%PR_PATH%\jre\bin\java.exe"
nssm set tcpServerDemo AppParameters "-Dfile.encoding=utf-8 -jar %PR_PATH%\tcpServerDemo.jar"
nssm set tcpServerDemo Description "TCP server simple demo"
nssm set tcpServerDemo DisplayName "tcpServerDemo"
nssm set tcpServerDemo Start SERVICE_DELAYED_AUTO_START
nssm set tcpServerDemo AppStdout "%PR_PATH%\tcpServerDemo.log"
nssm start tcpServerDemo

timeout 3 > nul

@exit
