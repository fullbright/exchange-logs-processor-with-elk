@echo off

cd c:\Users\AFANOUS\Documents\Projects\ExchangeMigration\CollectLog\

echo Deleting index in elacticsearch
cscript.exe delete_elasticsearchindex.vbs

echo Create an empty file
REM echo " " > TestInput\collect_lines_from_frem0010.log
REM echo " " > TestInput\collect_lines_from_frem9901.log
REM echo " " > TestInput\collect_lines_from_frem9902.log

echo Collecting logs from frem0010
for %%F in (FREM0010\*.log) do ( 
   head.bat 10 %%~dpnxF | find /V "# " >> TestInput\collect_lines_from_frem0010.log 
)

echo Collecting logs from frem9901
for %%F in (FREM9901\*.log) do (
   head.bat 10 %%~dpnxF | find /V "# " >> TestInput\collect_lines_from_frem9901.log
)

echo Collecting logs from frem9902
for %%F in (FREM9902\*.log) do (
   head.bat 10 %%~dpnxF | find /V "# " >> TestInput\collect_lines_from_frem9902.log
)