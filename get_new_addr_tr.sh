#!/bin/bash
for a in $@;
do
#convert $a -rotate 90 $a.png
convert -density 300 $a $a.png
a=$a".png"
echo $a
convert $a -crop 820x460+40+40 "1"$a
convert $a -crop 900x850+1000+440 "2"$a
convert $a -crop 850x350+1020+30 "3"$a
convert $a -crop 750x190+100+1040 "4"$a
convert "1"$a -rotate 90 "1"$a
#convert "2"$a -rotate 90 "2"$a
convert "3"$a -rotate 270 "3"$a
convert "4"$a -rotate 90 "4"$a
done;

HTML_FILE=tracks.html
echo "<html>" > $HTML_FILE
for a in $@;
do
echo "<img src=1"$a".png width=142 height=253></img>" >> $HTML_FILE
echo "<img src=2"$a".png width=280 height=264></img>" >> $HTML_FILE
echo "<img src=3"$a".png width=107 height=260></img>" >> $HTML_FILE
echo "<img src=4"$a".png width=59 height=232></img>" >> $HTML_FILE
done;
echo "</html>" >> $HTML_FILE
