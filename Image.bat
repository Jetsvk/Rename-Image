@echo off
setlocal enabledelayedexpansion

set /a count=1
for %%x in (jpg jpeg png bmp gif tif webp) do (
    for %%f in (*.%%x) do (
        set "ext=%%~xf"
        set "ext=!ext:~1!"  :: removes the dot from extension
        ren "%%f" "!count!.!ext!"
        set /a count+=1
    )
)

endlocal
