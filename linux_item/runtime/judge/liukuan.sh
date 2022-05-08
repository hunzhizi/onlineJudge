#!/bin/bash
. /linux_item/sql/getStu_info/sqlFunction

studentid=`whoami`
cd  /home/${studentid}/source/
#echo "请输入题号："
#read i
cp $1.c /linux_item/runtime/judge/source/testInput/T$1
cd /linux_item/runtime/judge/source/testInput/T$1
gcc $1.c -o $1.out
rm $1.c
if [ -x $1.out ]
then 
for k in 1 2 3 4 5 
do 
./$1.out < t$k.txt >> output.txt
done
rm $1.out
cp output.txt /linux_item/runtime/judge/source/testoutput
rm output.txt
cd /linux_item/runtime/judge/source/testoutput
diff -B -b output.txt standardT$1.text > test1.txt
rm output.txt
if [ ! -s test1.txt ]
then 
echo `date` 
echo `whoami` 
echo 题目$1
echo "接受！通过`expr $k `个测试点！"

 $(/linux_item/sql/getStu_info/getStuInfoById.sh)<$studentid>>/linux_item/stu_info/commit.log
echo  `date` >>/linux_item/stu_info/commit.log
echo  题目$1>>/linux_item/stu_info/commit.log
echo "程序通过">>/linux_item/stu_info/commit.log

date1=$(date +%Y-%m-%d)
access=$(echo "接受！通过`expr $k - 1`个测试点！")
insertSql="insert into commit_info (stu_id,commit_date,problem_id,num_access_point) values(\"${studentid}\",\"${date1}\",$1,\"${access}\");"
mysqlExecute "$insertSql"

else
echo "测试错误"
echo "未通过的测试点为`cat test1.txt`"

$(/linux_item/sql/getStu_info/getStuInfoById.sh)<$studentid>>/linux_item/stu_info/commit.log
echo  `date` >>/linux_item/stu_info/commit.log
echo  题目$1>>/linux_item/stu_info/commit.log
echo "程序未通过">>/linux_item/stu_info/commit.log


fi
rm  test1.txt
else
gcc $1.c 2> err.txt
cat err.txt|more
rm err.txt
echo "编译错误"
fi
cd /home/$studentid/source
