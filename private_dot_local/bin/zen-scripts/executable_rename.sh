#!/usr/bin/zsh
count=1
for f in *.jpg; do
    new_name="bg${count}.jpg"
    mv "$f" "$new_name"
    count=$((count + 1))
done
