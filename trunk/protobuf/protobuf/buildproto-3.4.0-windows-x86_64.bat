@echo off
if exist "%~dp0/protocs" rmdir /s /q "%~dp0/protocs"
mkdir "%~dp0/protocs"

cd %~dp0/proto
for %%i in (*.proto) do (
	echo %%i
	..\protoc-3.4.0-windows-x86_64.exe --java_out=../protocs/ %%i
) 
 

set foldername="../../../WolleyServer/Network"
set messagefoldername="../../../WolleyServer/Network/Message-3.4.0"

if exist %messagefoldername% (rd /s /q %messagefoldername%)
move /y %~dp0/protocs %messagefoldername%
 

pause