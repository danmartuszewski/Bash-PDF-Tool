#!/bin/bash

title="Odblokowywanie plików PDF"
file=`zenity --file-selection --title "Wybierz plik - $title" --file-filter "*.pdf"` 
pass=`zenity --entry --title "Hasło - $title" --hide-text --text "Wpisz hasło:"`
savePath=`zenity --file-selection --save --confirm-overwrite --title "Zapisz jako"`

pdftk $file input_pw $pass output $savePath
