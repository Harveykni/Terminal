@echo off
for /f "tokens=*" %%i in (base.txt) do (
    "%pip%" install %%i
)
for /f "tokens=*" %%i in (req.txt) do (
    "%pip%" install %%i
)