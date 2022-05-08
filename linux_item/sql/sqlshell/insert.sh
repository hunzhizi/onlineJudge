#!/usr/bin/env bash
. /linux_item/sql/getStu_id/getStu_id.sh
#该shell用于进行题目的增添，规定：没有添加过的题目没有题号，添加过之后将题目带上题号。

insertSql="select stu_id from stu_info;"

# 调用方法执行sql，打印出sql执行结果但不获取返回值
mysqlExecute "$insertSql"
