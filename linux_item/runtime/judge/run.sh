echo "请输入题号："
read i
timeout 10 sh liukuan.sh $i
if [ $? -eq 124 ];then
echo "运行超时"
fi
