from winotify import Notification
import pyperclip, sys

url = sys.argv[1] if len(sys.argv) > 1 else sys.exit(0)
pyperclip.copy(url)

toast = Notification(app_id="Link Copier", title="Link Copied!", msg=f"URL: {url}")
toast.show()
