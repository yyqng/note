#需要Oracle用户使用其.bash_profile中的环境变量，才能正确执行备份
source /home/oracle/.bash_profile
#备份目录：bkdir
bkdir=/backup/oracle/
table=TB_ADDRESS
exp zdzc/thinker@orcl file=$bkdir$table.dmp tables=$table
table=TB_BLOG
exp zdzc/thinker@orcl file=$bkdir$table.dmp tables=$table
table=TB_EMAIL
exp zdzc/thinker@orcl file=$bkdir$table.dmp tables=$table
table=TB_FRIEND
exp zdzc/thinker@orcl file=$bkdir$table.dmp tables=$table
table=TB_PROTOCOL_CONFIG_BAK
exp zdzc/thinker@orcl file=$bkdir$table.dmp tables=$table
table=TB_READ
exp zdzc/thinker@orcl file=$bkdir$table.dmp tables=$table
table=TB_S_USER
exp zdzc/thinker@orcl file=$bkdir$table.dmp tables=$table
table=TB_SHOP
exp zdzc/thinker@orcl file=$bkdir$table.dmp tables=$table
table=TB_TARGET
exp zdzc/thinker@orcl file=$bkdir$table.dmp tables=$table
table=TB_TRIP
exp zdzc/thinker@orcl file=$bkdir$table.dmp tables=$table
table=TB_USER
exp zdzc/thinker@orcl file=$bkdir$table.dmp tables=$table
table=TB_VOXER_BUDDIES
exp zdzc/thinker@orcl file=$bkdir$table.dmp tables=$table
table=TB_VOXER_USERINFO
exp zdzc/thinker@orcl file=$bkdir$table.dmp tables=$table

