# Preliminary inotifywait script to compile all Markdown/TeX files
# in the current directory.

inotifywait -m -e close_write,moved_to,create . |
while read -r directory events filename; do
  filename=$(basename "$filename")
  ext="${filename##*.}"
  filename="${filename%.*}"
  if [ $ext = "tex" ]; then
    xelatex -interaction=nonstopmode -file-line-error $filename.$ext
  fi
done
