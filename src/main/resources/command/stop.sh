#!/usr/bin/env bash
echo "Stopping project"
projectport=8082
lsof -i:$projectport
pid=`lsof -i:$projectport | grep -v grep | awk '{print $2}'`
if [ -n "$pid" ]
then
   echo "shutdown tomcat" $pid
   cd /usr/local/mysoft/tomcats/tomcat8082/bin
   sh ./shutdown.sh
fi