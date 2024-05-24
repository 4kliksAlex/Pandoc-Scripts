@echo off
setlocal enabledelayedexpansion

for %%f in (%*) do (
    set "filename=%%~nf"
    set "extension=%%~xf"
    if /i "!extension!" == ".md" (
        pandoc "%%~ff" -f gfm -o "!filename!.pdf"
    )
)

echo Complete.