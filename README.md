# FinSure Banking QA

This project includes a lightweight local FinSure banking demo and a Robot Framework + Playwright login/logout automation suite.

## Quick start

1. Start the demo app:
   `python start_banking_demo.py`

2. Run the login test:
   `./.venv/Scripts/robot.exe ./tests/login_tests.robot`

   On Windows PowerShell:
   `.\.venv\Scripts\robot.exe .\tests\login_tests.robot`

3. Optional override for a different URL:
   `$env:FINSURE_URL = 'http://127.0.0.1:3000'`

## Demo credentials

- Username: `testuser`
- Password: `Passw0rd!`

## Notes

The browser test uses `Browser` library with Playwright locators and is compatible with the local demo app served on port 3000.
