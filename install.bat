@echo off
set APP_NAME=CopyLinktoClipboard
set APP_PATH=%~dp0CopyLinktoClipboard.exe
set APP_DISPLAY_NAME=Copy Link to Clipboard

REM RegisteredApplications
reg add "HKLM\SOFTWARE\RegisteredApplications" ^
 /v "%APP_NAME%" /t REG_SZ ^
 /d "Software\%APP_NAME%\Capabilities" /f

REM Capabilities
reg add "HKLM\SOFTWARE\%APP_NAME%\Capabilities" ^
 /v "ApplicationName" /t REG_SZ ^
 /d "%APP_DISPLAY_NAME%" /f

reg add "HKLM\SOFTWARE\%APP_NAME%\Capabilities" ^
 /v "ApplicationDescription" /t REG_SZ ^
 /d "Copy web link instead open it directly" /f

REM URL Associations
reg add "HKLM\SOFTWARE\%APP_NAME%\Capabilities\URLAssociations" ^
 /v "http" /t REG_SZ /d "%APP_NAME%URL" /f
reg add "HKLM\SOFTWARE\%APP_NAME%\Capabilities\URLAssociations" ^
 /v "https" /t REG_SZ /d "%APP_NAME%URL" /f
reg add "HKLM\SOFTWARE\%APP_NAME%\Capabilities\URLAssociations" ^
 /v "ftp" /t REG_SZ /d "%APP_NAME%URL" /f

REM URL Handler
reg add "HKLM\Software\Classes\%APP_NAME%URL" ^
 /ve /t REG_SZ /d "%APP_NAME% URL" /f

reg add "HKLM\Software\Classes\%APP_NAME%URL\shell\open\command" ^
 /ve /t REG_SZ ^
 /d "\"%APP_PATH%\" \"%%1\"" /f

echo Success!
pause