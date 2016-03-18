set JAVA_HOME=C:\Program Files (x86)\Java\jre7

echo Starting elastic search
cd c:\Users\AFANOUS\Documents\Projects\ExchangeMigration\elasticsearch-2.2.0
start /LOW .\bin\elasticsearch
echo Done.

echo Starting logstash ...
cd c:\Users\AFANOUS\Documents\Projects\ExchangeMigration\logstash-2.2.0
start /LOW .\bin\logstash -f ..\CollectLog\logstash.conf --log .\logstatsh.all.log --debug
echo Done.

echo Starting kibana ...
cd c:\Users\AFANOUS\Documents\Projects\ExchangeMigration\kibana-4.4.0-windows
start /LOW .\bin\kibana
echo Done.

pause