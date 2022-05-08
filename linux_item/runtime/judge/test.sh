#!/bin/bash
studentid=`whoami`
cd  /home/$studentid/source
echo "请输入题号："
read i
cp $i.c /home/teacherYu/source/testInput/T$i
cd /home/teacherYu/source/testInput/T$i
gcc $i.c -o $i.out
rm $i.c
if [ -x $i.out ]
then 
for((k=1;k<=5;k++))
do 
./$i.out < t$k.txt >> output.txt
done
rm $i.out
cp output.txt /home/teacherYu/source/testoutput
rm output.txt
cd /home/teacherYu/source/testoutput
diff -B -b output.txt standardT$i.text > test1.txt
rm output.txt
if [ ! -s test1.txt ]
then 
echo `date` 
echo `whoami` 
echo 题目$i
echo "接受！通过`expr $k - 1`个测试点！"
#cp $i.c /linux_item/stusrouce/$ID.$i.c
else
echo "测试错误"
echo "未通过的测试点为`cat test1.txt`"
fi
rm  test1.txt
else
gcc $i.c 2> err.txt
cat err.txt|more
rm err.txt
echo "编译错误"
fi
cd /home/$studentid/source
#(ps -eq|grep "bash time.sh")>time
#read -a tm<time
#kill -s 9 ${tm[2]}
#rm time
#学生源文件 source
#学生文件 README
#问题文件目录 根目录 /problemset
#成功源码放到 linux_item/stusrouce
