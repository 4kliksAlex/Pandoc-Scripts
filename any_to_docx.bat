@REM @echo off
setlocal enabledelayedexpansion

for %%f in (%*) do (
    set "filename=%%~nf"
    set "extension=%%~xf"
    pandoc "%%~ff" -o "!filename!.docx" -s
)

echo Complete.