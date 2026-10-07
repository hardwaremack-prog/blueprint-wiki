@echo off
rem Blueprint Wiki on Windows - starts the wiki and opens it in your browser.
rem Keep the small black window open while you use it.
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  py server.py --open
) else (
  where python >nul 2>nul || goto nopython
  python server.py --open
)
goto :eof
:nopython
echo Blueprint Wiki needs Python. Get it free from https://www.python.org/downloads/
pause
