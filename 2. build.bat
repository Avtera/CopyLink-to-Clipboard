pyinstaller --onefile --noconsole --distpath . --collect-all winotify --name CopyLinktoClipboard copylinktoclipboard.py
rmdir /s /q build
del /q CopyLinktoClipboard.spec

echo done.
pause
