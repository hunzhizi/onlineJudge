#!/usr/bin/env bash
. /linux_item/sql/getStu_info/sqlFunction

# select列数
column_num=1

selectSql="select stu_id from stu_info;"

# 调用方法执行sql，打印出sql执行结果但不获取返回值
#mysqlExecute "$selectSql"
# 用数组接收查询返回值
result=(`mysqlExecuteQuery "$selectSql"`)

# 计算查询返回结果数据行数
row_num=`getRowNumFromResult ${column_num} ${result[*]}`

for (( i=1; i<=$row_num; i=i+1))
do
    # 获取第一列的值
    id=`getValueFromResult $[i] 1 $column_num ${result[*]}`
    # 获取第二列的值
   # name=`getValueFromResult $[i] 2 $column_num ${result[*]}`
    echo "stu_id: u$id"
#, name: $name
done
