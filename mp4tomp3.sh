MP3_DIR="mp3"
mkdir -p $MP3_DIR
for f in *; do
    if [[ $f =~ mp4$ ]]; then
	of="${f%%mp4}mp3"
	ffmpeg -i $f -vn -b:a 128k -c:a libmp3lame $MP3_DIR/$of
    fi
done

