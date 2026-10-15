from http.server import ThreadingHTTPServer, SimpleHTTPRequestHandler
from pathlib import Path

ROOT = Path(__file__).resolve().parent
HTML_DIR = ROOT / "bankofnorth_demo"


class Handler(SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=str(HTML_DIR), **kwargs)


if __name__ == "__main__":
    server = ThreadingHTTPServer(("127.0.0.1", 3000), Handler)
    print("Bank of North demo is running at http://127.0.0.1:3000")
    server.serve_forever()
