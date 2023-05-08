echo off
set arg1=%1
set arg2=%2
shift
shift
C:\Users\conta\Downloads\ffmpeg-6.0-full_build\bin\ffmpeg.exe -i %arg1% -filter_complex "[0:v] fps=12,scale=280:-1,split [a][b];[a] palettegen [p];[b][p] paletteuse" %arg2%
