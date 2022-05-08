#!/bin/bash

/linux_item/sql/getStu_info/getStu_id.sh|cut -b 9-21>./need/1.txt
c=1
cat ./need/1.txt | while read stuname
do
   count=`cat /etc/passwd | grep "^$stuname" -c`
if [ $count -eq 1 ];then
   sudo userdel $stuname
   sudo rm -rf /home/$stuname
   else echo "do not have this student:$stuname"
fi
   c=$[ $c + 1 ]
done
echo "deleting..."
sleep 3

