@echo off
setlocal enabledelayedexpansion

for %%f in (%*) do (
    set "filename=%%~nf"
    set "extension=%%~xf"
    if /i "!extension!" == ".md" (
        pandoc --katex "%%~ff" -f gfm -o "!filename!.docx" -s
    )
)

echo Complete.