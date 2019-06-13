#!/usr/bin/env bash
######备份
projectpath=/usr/local/mysoft/tomcats/tomcat8082/webapps
filename=myspringdemo1.war
#if  [ -e $projectpath/$filename ];then   #这里是判断语句，-e表示进行比较结果为真则存在
#    echo $filename"文件存在,开始备份"
#    cp $projectpath/$filename $projectpath/bak/$filename-$(date +%Y%m%d%H%M%S)
#    echo "成功备份在："$projectpath/bak
#fi

###清除旧包
cd $projectpath
rm -rf myspringdemo1
rm -rf $filename

###复制应用包
cd
cp .jenkins/workspace/myspringdemo1/target/$filename  $projectpath
echo "成功复制在":$projectpath