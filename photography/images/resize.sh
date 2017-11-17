#!bin/bash
mogrify *.jpg -quality 75 -resize 512x512 -path ./thumbs *.jpg
mogrify *.jpg -quality 75 -resize 2048x2048 -path ./fulls *.jpg
mv *.jpg hires/

