#需要Oracle用户使用其.bash_profile中的环境变量，才能正确执行备份
source /home/oracle/.bash_profile
#备份,bkdir为备份目录
bkdir=/backup/oracle/
d=$(date '+%Y%m%d')
exp zdzc/zdzcoracle123@orcl file=$bkdir$d.dmp log=$bkdir$d.log owner=zdzc
zip -m $bkdir$d.zip $bkdir$d.dmp $bkdir$d.log
#删除7天前的备份
days=7
#删除7天前的备份（注意：{} \中间有空格）
find $bkdir -type f -name "*.zip" -mtime +$days -exec rm -rf {} \;

