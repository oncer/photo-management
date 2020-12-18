for %%i in (%*) do (
	ffmpeg -i %%i -vf scale=w=1280:h=1280:force_original_aspect_ratio=decrease -c:v libx264 -c:a copy -preset slow -crf 22 "%%~ni_720p.mp4"
)

pause
