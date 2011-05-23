#!/bin/bash

title="Obracanie stron PDF-a"
file=`zenity --file-selection --title "$title" --file-filter "*.pdf"` 
rotation=`zenity --entry --title "$title" --text "Wpisz strony i wartości obrotu:\n
N: 0, E: 90, S: 180, W: 270, L:  -90,  R:  +90,  D: 180\n
1-2E 3-endS\t AW \t2-20evenL"`
savePath=`zenity --file-selection --save --confirm-overwrite --title "$title"`

pdftk $file cat $rotation output $savePath
