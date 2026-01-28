pyinstaller --onefile --noconsole --distpath . --collect-all win10toast --name CopyLinktoClipboard copylinktoclipboard.py
rmdir /s /q build
del /q CopyLinktoClipboard.spec

echo done.
pause