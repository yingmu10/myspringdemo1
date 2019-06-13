#!/usr/bin/env bash
echo "Stopping project"
pid=`lsof -i:8082 | grep -v grep | awk '{print $2}'`
if [ -n "$pid" ]
then
   echo "shutdown tomcat" $pid
   cd /usr/local/mysoft/tomcats/tomcat8082/bin
   sh ./shutdown.sh
fi
