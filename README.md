# FinSure Banking QA

[![Python](https://img.shields.io/badge/Python-3.11%2B-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![Robot Framework](https://img.shields.io/badge/Robot%20Framework-7.x-1d4ed8)](https://robotframework.org/)
[![Playwright](https://img.shields.io/badge/Playwright-Browser%20Automation-2EAD33)](https://playwright.dev/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A small banking QA project that combines a lightweight local demo banking app with Robot Framework automation and Playwright-based browser testing.

This repository demonstrates end-to-end login, logout, and dashboard validation flows using a realistic test automation setup.

## Project overview

- Local demo bank app served via Python HTTP server
- Robot Framework test suite for browser-based validation
- Browser library with Playwright backend
- Gherkin-style BDD scenarios and page object structure
- Bank of North demo variant included for alternate UI testing

## Tech stack

- Python
- Robot Framework
- Browser library
- Playwright
- GitHub Actions-ready automation structure

## Quick start

1. Create and activate a virtual environment

   ```bash
   python -m venv .venv
   .\.venv\Scripts\Activate.ps1
   ```

2. Install dependencies

   ```bash
   pip install robotframework robotframework-browser
   python -m Browser.install
   ```

3. Start the demo app

   ```bash
   python start_banking_demo.py
   ```

4. Run the test suite

   ```bash
   .\.venv\Scripts\robot.exe .\tests
   ```

5. Optional URL override

   ```powershell
   $env:FINSURE_URL = 'http://127.0.0.1:3000'
   ```

## Demo credentials

- Username: `testuser`
- Password: `Passw0rd!`

## Included demo apps

- `banking_demo/` — FinSure banking demo
- `bankofnorth_demo/` — alternate Bank of North banking demo

## Test structure

- `tests/banking_bdd.robot` — BDD scenarios
- `tests/login_tests.robot` — login/logout validation
- `tests/browser_test.robot` — browser smoke checks
- `resources/pages/` — page object keywords
- `resources/steps/` — BDD step definitions

## Example commands

```powershell
.\.venv\Scripts\robot.exe .\tests\login_tests.robot
.\.venv\Scripts\robot.exe -t "Logout Successfully" .\tests\login_tests.robot
```

## Notes

This project is intended for learning, experimentation, and QA automation demos. The banking apps are local mock applications and are not connected to a real banking backend.
