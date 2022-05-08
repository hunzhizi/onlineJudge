#!/bin/bash

echo "write the group"
read group
/linux_item/sql/getStu_info/getStu_id.sh|cut -b 9-21>./need/1.txt
c=1
cat ./need/1.txt | while read stuname
do
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
   c=$[ $c + 1 ]
done
echo "adding..."
sleep 3
