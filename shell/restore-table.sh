#需要Oracle用户使用其.bash_profile中的环境变量，才能正确执行备份
source /home/oracle/.bash_profile
#备份目录：bkdir
bkdir=/backup/oracle/
table=TB_ADDRESS
imp zdzc/zdzcoracle123@orcl fromuser=zdzc touser=zdzc file=$bkdir$table.dmp
table=TB_BLOG
imp zdzc/zdzcoracle123@orcl fromuser=zdzc touser=zdzc file=$bkdir$table.dmp
table=TB_EMAIL
imp zdzc/zdzcoracle123@orcl fromuser=zdzc touser=zdzc file=$bkdir$table.dmp
table=TB_FRIEND
imp zdzc/zdzcoracle123@orcl fromuser=zdzc touser=zdzc file=$bkdir$table.dmp
table=TB_PROTOCOL_CONFIG_BAK
imp zdzc/zdzcoracle123@orcl fromuser=zdzc touser=zdzc file=$bkdir$table.dmp
table=TB_READ
imp zdzc/zdzcoracle123@orcl fromuser=zdzc touser=zdzc file=$bkdir$table.dmp
table=TB_S_USER
imp zdzc/zdzcoracle123@orcl fromuser=zdzc touser=zdzc file=$bkdir$table.dmp
table=TB_SHOP
imp zdzc/zdzcoracle123@orcl fromuser=zdzc touser=zdzc file=$bkdir$table.dmp
table=TB_TARGET
imp zdzc/zdzcoracle123@orcl fromuser=zdzc touser=zdzc file=$bkdir$table.dmp
table=TB_TRIP
imp zdzc/zdzcoracle123@orcl fromuser=zdzc touser=zdzc file=$bkdir$table.dmp
table=TB_USER
imp zdzc/zdzcoracle123@orcl fromuser=zdzc touser=zdzc file=$bkdir$table.dmp
#table=TB_VOXER_BUDDIES
#imp zdzc/zdzcoracle123@orcl fromuser=zdzc touser=zdzc file=$bkdir$table.dmp
#table=TB_VOXER_USERINFO
#imp zdzc/zdzcoracle123@orcl fromuser=zdzc touser=zdzc file=$bkdir$table.dmp

