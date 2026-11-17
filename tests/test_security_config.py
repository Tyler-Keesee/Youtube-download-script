import ast
from pathlib import Path
import unittest

source = (Path(__file__).resolve().parent.parent / "main.py").read_text(encoding="utf-8")

class DownloaderSecurityRegression(unittest.TestCase):
    def test_python_parses(self):
        ast.parse(source)

    def test_https_verification_is_enabled(self):
        self.assertNotIn("nocheckcertificate", source)

    def test_errors_are_not_discarded(self):
        self.assertNotIn("'ignoreerrors': True", source)

if __name__ == "__main__":
    unittest.main()
