#!/bin/bash
#用于测试获取文件
. /linux_item/sql/getStu_id/getStu_id.sh

problem=""
insertSql="insert into problem_info value(null,${problem});"

cd /linux_item/problemSet
res=($(ls))
for(( i=0;i<${#res[@]};i++))
 do
    #${#array[@]}获取数组长度用于循环
	 fileName=$(echo ${res[i]}| grep -v "\.");
	if [ "${fileName}" != "" ];
	then
		echo ${fileName}
		problem=$(cat ${res[i]})
		echo ${problem}
# 调用方法执行sql，打印出sql执行结果但不获取返回值
		mysqlExecute "$insertSql"
		#修改文件名
		$(mv ${fileName} )
	fi
done;
