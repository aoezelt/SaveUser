@ECHO OFF
rem Die Ausgabe der Behfehlszeilen wird unterdr�ckt. Das @-Zeichen unterdr�ckt die Ausgabe der Zeile selbst
SETLOCAL ENABLEEXTENSIONS
rem SETLOCAL: Variablen die nach dieser Anweisung deklariert werden , sind nur f�r die Laufzeit des Scripts
rem g�ltig und �berschreiben keine eventuell vorhandenen globalen Variablen.
rem ENABLEEXTENSIONS: Aktivieren command processor extensions
SET me=%~n0
rem in %me% wird der Name des Scripts gespeichert
SET parent=%~dp0
rem In %parent% wird der absolute Verzeichnisname in dem das script abgelegt ist, abgespeichert
ECHO text > text.txt
rem Der String text wird in die Datei text.txt ausgegeben. text.txt wird als erstes gel�scht
ECHO text2 >> text.txt
rem Der String text2 wird in die Datei text.txt angeh�ngt.
