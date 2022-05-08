#!/usr/bin/env bash
. /linux_item/sql/getStu_info/sqlFunction

# select列数
column_num=3

selectSql="select * from stu_info where stu_id = \"$1\";"

# 调用方法执行sql，打印出sql执行结果但不获取返回值
#mysqlExecute "$selectSql"
# 用数组接收查询返回值
result=(`mysqlExecuteQuery "$selectSql"`)

# 计算查询返回结果数据行数
row_num=`getRowNumFromResult ${column_num} ${result[*]}`

    # 获取第一列的值
    name=`getValueFromResult 1 2 $column_num ${result[*]}`
    # 获取第二列的值
    class=`getValueFromResult 1 3 $column_num ${result[*]}`
if [ "$name" != "" ] ;
then    
	echo "stu_id: $1 name:${name} class:${class}"
else
	echo "该学生学号不存在"
fi

