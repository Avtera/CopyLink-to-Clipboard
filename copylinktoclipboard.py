from winotify import Notification, audio
import pyperclip, sys

url = sys.argv[1] if len(sys.argv) > 1 else sys.exit(0)
pyperclip.copy(url)

toast = Notification(app_id="Copy Link to Clipboard", title="Link Copied!", msg=f"URL: {url}")
toast.set_audio(audio.Default, loop=False)
toast.show()
