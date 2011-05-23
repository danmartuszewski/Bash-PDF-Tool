#!/bin/bash

title="Łączenie PDF-ów"
files=`zenity --file-selection --title "Wybierz pliki do złączenia $title" --multiple --separator " " --file-filter "*.pdf"` 
savePath=`zenity --file-selection --save --confirm-overwrite --title "Plik wynikowy - $title"`

pdftk $files cat output $savePath
