import sys
import pyperclip
from win10toast import ToastNotifier

if len(sys.argv) < 2:
    sys.exit(0)

url = sys.argv[1]
pyperclip.copy(url)

ToastNotifier().show_toast(
    "Link Copied!",
    f"URL: {url}",
)
