#!/usr/bin/env bash
tomcatpath=/usr/local/mysoft/tomcats/tomcat8082
cd $tomcatpath/bin
sh startup.sh
echo "project start………………"
tail -f ../logs/catalina.out
