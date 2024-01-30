#!/bin/bash
for a in $@;
do
#convert $a -rotate 90 $a.png
convert -density 300 $a $a.png
a=$a".png"
echo $a
convert $a -crop 840x460+40+72 "1"$a
convert $a -crop 940x600+840+570 "2"$a
convert $a -crop 598x264+912+110 "3"$a
convert "3"$a -rotate 90 "3"$a
done;

HTML_FILE=tracks.html
echo "<html>" > $HTML_FILE
for a in $@;
do
echo "<img src=1"$a".png width=260 height=138></img>" >> $HTML_FILE
echo "<img src=2"$a".png width=290 height=186></img>" >> $HTML_FILE
echo "<img src=3"$a".png width=78 height=176></img>" >> $HTML_FILE
done;
echo "</html>" >> $HTML_FILE
