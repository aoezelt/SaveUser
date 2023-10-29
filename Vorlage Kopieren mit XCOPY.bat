@ECHO OFF
rem e /Aktiviert - Kopiere all Unterverzeichnisse, auch wenn sie leer sind
rem s /Nicht Aktiviert - Kopiere Verzeichnisse und Unterverzeichnisse, wenn sie nicht leer sind
rem t /Nicht Aktiviert - Kopiere nur den Unterverzeichnisbaum (ohne Dateien)
rem d /Aktiviert - Kopiere alle Quell-Dateien die neuer als die Ziel-Dateien sind
rem y /Aktiviert - Unterdrückt die Frage ob die Datei überschrieben werden soll
rem >xcopy.txt - Das Ergebnisprotokoll wird in xcopy.txt geschrieben.

xcopy u:\KopierenT f:\Sicherung /e /d /y >xcopy.txt