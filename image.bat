@echo off
echo [> data\images.json

set first=1
for %%f in (images\*) do (
  if !first!==1 (
    echo   "images/%%~nxf">> data\images.json
    set first=0
  ) else (
    echo , "images/%%~nxf">> data\images.json
  )
)

echo ]>> data\images.json
echo DONE
pause
