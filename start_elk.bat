set JAVA_HOME=E:\ELK\jre1.8.0_101\
set PATH="%PATH%;E:\ELK\jre1.8.0_101\bin\"

echo Starting elastic search
start /LOW E:\ELK\elasticsearch-2.2.0\bin\elasticsearch
echo Done.

echo Starting logstash ...
start /LOW E:\ELK\logstash-2.2.0\bin\logstash -f E:\ELK\logstash.conf --log E:\ELK\logstatsh.all.log --debug
echo Done.

echo Starting kibana ...
start /LOW E:\ELK\kibana-4.4.0-windows\bin\kibana
echo Done.

pause