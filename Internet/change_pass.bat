@echo off
net session >nul 2>&1 || (powershell start -verb runas '"%~0"' &exit /b)
net user NghiaNL nghianl