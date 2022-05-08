#!/bin/bash
. /linux_item/sql/getStu_info/sqlFunction
#用于根据文本文件的内容进行用户的创建
while read -r line
do
	res=($(echo $line))
	echo ${res[0]} ${res[1]} ${res[2]}
	insertSql="insert into stu_info value(\"${res[0]}\",\"${res[1]}\",\"${res[2]}\");"
	mysqlExecute "$insertSql"
done < /linux_item/stu_info/stu_info.txt


