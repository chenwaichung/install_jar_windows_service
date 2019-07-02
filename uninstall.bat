@ECHO off

cd /d "%~dp0"

nssm stop tcpServerDemo
nssm remove tcpServerDemo confirm

timeout 3 > nul

@exit
