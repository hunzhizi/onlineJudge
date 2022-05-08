#!/bin/bash

echo "write the student(s) ID(s),and separete the names with ','"
read names
name=(${names//,/ })
stucount=${#name[@]}
n=0
while  [ $stucount -ge 1 ]
do
stuname=${name[$n]}
count=`cat /etc/passwd | grep "^$stuname" -c`
if [ $count -eq 1 ];then
sudo userdel $stuname
sudo rm -rf /home/$stuname
else echo "do not have this student:$stuname"
fi
stucount=`expr $stucount - 1`
let n++
done
echo "over"
echo "deleting..."
sleep 3
