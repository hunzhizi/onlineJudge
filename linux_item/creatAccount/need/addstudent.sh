#!/bin/bash

echo "write the student(s) ID(s),and separete the IDs with ','"
read names
name=(${names//,/ })
echo "write the group"
read group
stucount=${#name[@]}
n=0
while [ $stucount -ge 1 ]
do
stuname=${name[$n]}
count=`cat /etc/passwd | grep "^$stuname" -c`
if [ $count -ne 1 ];then
`sudo useradd -d /home/$stuname -m $stuname`
echo "ysu123456" | passwd $stuname --stdin
sudo usermod -a -G $group $stuname
sudo chgrp $group /home/$stuname
sudo ln -s /linux_item/problemSet /home/$stuname/problem
sudo ln -s /linux_item/runtime/judge/judge /home/$stuname/submit
else echo "This student is aready here:$stuname"
fi
stucount=`expr $stucount - 1`
let n++
done
echo "adding..."
sleep 3
