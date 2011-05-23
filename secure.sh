#!/bin/bash

title="Zabezpieczanie plików PDF"
file=`zenity --file-selection --title "Wybierz plik - $title" --file-filter "*.pdf"` 
allow=`zenity --list --text "Zazwól na:" --checklist --column "Zaznacz" --column "Uprawnienia" TRUE Printing FALSE DegradedPrinting FALSE ModifyContents FALSE CopyContents FALSE ModifyAnnootations  --separator " "`
pass=`zenity --entry --title "Hasło właściciela - $title" --hide-text --text "Wpisz hasło właściciela:"`
pass2=`zenity --entry --title "Hasło użytkownika - $title" --hide-text --text "Wpisz hasło użytkownika:"`
savePath=`zenity --file-selection --save --confirm-overwrite --title "$title"`

pdftk $file cat output $savePath owner_pw "$pass" user_pw "$pass2" allow $allow
