@echo off

set OUTPUT_FORMAT=png

if not exist "%OUTPUT_FORMAT%" mkdir %OUTPUT_FORMAT%

for %%f in (%*) do (
  if exist %%f (
    echo Converting: %%~nxf
    inkscape -p "%%~nxf" -o "%OUTPUT_FORMAT%\%%~nf.%OUTPUT_FORMAT%"
  ) else (
    echo File not found: %%~nxf
  )
)

echo Conversion complete.
