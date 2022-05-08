#!/bin/bash

$(/linux_item/sql/insertStu/insertStu.sh)
while true
do
echo "what do you want to do?"
echo "please write your number."
echo "1.add a new group."
echo "2.add students"
echo "3.delete students"
echo "4.add students in the table"
echo "5.delete students in the table"
echo "6.View existing students"
echo "7.exit"
echo ".............................."
read num
case $num in
1) source ./need/addgroup.sh;;
2) source ./need/addstudent.sh;;
3) source ./need/studentdel.sh;;
4) source ./need/addstu.sh;;
5) source ./need/studel.sh;;
6) source ./need/students.sh;;
7) break;;
esac
clear
done
clear

