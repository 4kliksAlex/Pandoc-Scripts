@REM @echo off
setlocal enabledelayedexpansion

for %%f in (%*) do (
    set "filename=%%~nf"
    set "extension=%%~xf"
    pandoc -s "%%~ff" -t gfm-raw_html -o "!filename!.md" --extract-media=./assets/ --wrap=none
)

echo Complete.