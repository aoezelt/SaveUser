@ECHO OFF
rem Die Ausgabe der Behfehlszeilen wird unterdrückt. Das @-Zeichen unterdrückt die Ausgabe der Zeile selbst
SETLOCAL
rem SETLOCAL: Variablen die nach dieser Anweisung deklariert werden , sind nur für die Laufzeit des Scripts
rem gültig und überschreiben keine eventuell vorhandenen globalen Variablen.
SET VON=C:\Daten\3dDruck
rem SET VON=S:\
rem SET NACH=T:\Sicherung 2
SET NACH=C:\Daten\Projekte\Ziel
SET PROT=protokoll
ECHO Protokoll xcopy >%PROT%.txt
ECHO VON: %VON% >>%PROT%.txt
ECHO NACH: %NACH% >>%PROT%.txt
ECHO Start Sicherung: %DATE% %TIME% >>%PROT%.txt
rem xcopy Schalter
rem i: xcopy geht davon aus, daß das Ziel ein Verzeichnis ist
rem j: kopieren ohne Pufferung
rem c: ignoriert Fehler
rem die Standard Fehlerausgabe wird über 2 angesprochen un in die Datei umgeleitet.
xcopy "%VON%" "%NACH%" /e /d /y /i /j >>%PROT%.txt 2>fehler.txt
ECHO Ende Sicherung: %DATE% %TIME% >>%PROT%.txt
pause