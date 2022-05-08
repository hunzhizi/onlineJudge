#!/bin/bash
#用于测试获取文件,该文件会自动获取/linux_item/problemSet 路径下的所有题目，然后将没有提交到数据库的题目进行提交，并修改文件名，用以表明该文件已经录入数据库（有题号的为已经提交到数据库的，没有题号的是没有提交过的文件，该文件会被设置为定时任务，管理员无需进行手动提交）
. /linux_item/sql/getStu_info/sqlFunction



cd /linux_item/problemSet
res=($(ls))
for(( i=0;i<${#res[@]};i++))
 do
    #${#array[@]}获取数组长度用于循环
         fileName=$(echo ${res[i]}| grep -v "\.");
        if [ "${fileName}" != "" ];
        then
                echo "${fileName}里面的内容已经提交给数据库"
                problem=$(cat ${res[i]})
                insertSql="insert into problem_info value(null,\"${problem}\");"
                selectNum="select problem_id from problem_info order by problem_id desc limit 1;"
# 调用方法执行sql，打印出sql执行结果但不获取返回值
                mysqlExecute "$insertSql"
              # 用数组接收查询返回值
                max=`mysqlExecuteQuery "$selectNum"` 
        
                #修改文件名
                $(mv ${fileName} "${max}.${fileName}")
        fi
done;
