#! /bin/sh

BIN_PARSER=/home/wangjq/pktspy/bin/parser
FILE_PATH=/tmp/pktspy_testout_data


PRODUCT_TEST=1039999
PRODUCT_QQ=1030001
PRODUCT_VOXER=1030047
PRODUCT_TAOBAO=1220001
PRODUCT_JINGDONG=1220002
PRODUCT_MEITUAN=1220023
PRODUCT_QQMAIL=1010012
PRODUCT_126MAIL=1010018
PRODUCT_163MAIL=1010019
PRODUCT_SINAWEIBO=1330001
PRODUCT_DIDI=1450031
PRODUCT_CAMERA360=9780008
PRODUCT_YSYCAMERA=9780010
PRODUCT_YOUKU=1400002
PRODUCT_DOUYIN=1409026
PRODUCT_MAIMAI=1039379


#QQ
echo "=====QQ====="
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/qq_friend_20180712.html --productId=$PRODUCT_QQ --action=ACTION_FRIEND_LIST
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/qq_rizhi_20180712.html --productId=$PRODUCT_QQ --action=ACTION_USER_BLOG
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/qq_userinfo_20180712.html --productId=$PRODUCT_QQ --action=ACTION_USER_INFO
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/qq_xiangce_20180712.html --productId=$PRODUCT_QQ --action=ACTION_USER_PHOTO

#VOXER

echo "=====MaiMai====="
$BIN_PARSER --mode=SpyFile --input=$FILE_PATH/maimai-userInfo-20180705-android4.19.24.spy
$BIN_PARSER --mode=SpyFile --input=$FILE_PATH/maimai-userInfo-20180705-ios4.21.50.spy


echo "=====JingDong====="
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/jingdong-web-userinfo.html  --productId=$PRODUCT_JINGDONG --action=ACTION_USER_INFO
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/jingdong-web-order-list.html --productId=$PRODUCT_JINGDONG --action=ACTION_ORDER_LIST
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/jingdong-web-address-list.html --productId=$PRODUCT_JINGDONG --action=ACTION_USER_ADDRESS

echo "=====TaoBao====="
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/taobao_userinfo.html --productId=$PRODUCT_TAOBAO --action=ACTION_USER_INFO
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/taobao_order.json --productId=$PRODUCT_TAOBAO --action=ACTION_ORDER_LIST
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/taobao_address.html --productId=$PRODUCT_TAOBAO --action=ACTION_USER_ADDRESS

echo "=====MeiTuan====="
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/meituan_userinfo.html --productId=$PRODUCT_MEITUAN --action=ACTION_USER_INFO
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/meituan_order.html --productId=$PRODUCT_MEITUAN --action=ACTION_ORDER_LIST
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/meituan_address.html --productId=$PRODUCT_MEITUAN --action=ACTION_USER_ADDRESS


echo "=====SinaWeibo====="
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/sina-weibo-userinfo.json --productId=$PRODUCT_SINAWEIBO --action=ACTION_USER_INFO
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/sina-weibo-weibo-list.json --productId=$PRODUCT_SINAWEIBO --action=ACTION_WEIBO_LIST
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/sina-weibo-follow-list.json --productId=$PRODUCT_SINAWEIBO --action=ACTION_FOLLOWEE_LIST
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/sina-weibo-fans-list.json --productId=$PRODUCT_SINAWEIBO --action=ACTION_FOLLOWER_LIST


echo "=====Didi====="
$BIN_PARSER --mode=SpyFile --input=$FILE_PATH/didi-queryorder-20180705-android5.2.4.spy
$BIN_PARSER --mode=SpyFile --input=$FILE_PATH/didi-queryorder-20180705-ios5.2.4.spy


echo "=====QQMail====="
$BIN_PARSER --mode=SpyFile --input=$FILE_PATH/qqmail-web-userinfo-20180706.spy
$BIN_PARSER --mode=SpyFile --input=$FILE_PATH/qqmail-web-email-content-20180706.spy
$BIN_PARSER --mode=SpyFile --input=$FILE_PATH/qqmail-web-contact-20180706.spy

echo "=====126Mail====="
$BIN_PARSER --mode=SpyFile --input=$FILE_PATH/126mail-web-userinfo-20180706.spy
$BIN_PARSER --mode=SpyFile --input=$FILE_PATH/126mail-web-email-content-20180706.spy
$BIN_PARSER --mode=SpyFile --input=$FILE_PATH/126mail-web-contact-20180706.spy

echo "=====163Mail====="
$BIN_PARSER --mode=SpyFile --input=$FILE_PATH/163mail-web-userinfo-20180706.spy
$BIN_PARSER --mode=SpyFile --input=$FILE_PATH/163mail-web-email-content-20180706.spy
$BIN_PARSER --mode=SpyFile --input=$FILE_PATH/163mail-web-contact-20180706.spy


echo "=====Youku====="
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/youku_userinfo.json --productId=$PRODUCT_YOUKU --action=ACTION_USER_INFO
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/youku_web_userinfo.json --productId=$PRODUCT_YOUKU --action=ACTION_USER_PHOTO
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/youku_ios_record.html --productId=$PRODUCT_YOUKU --action=ACTION_WEIBO_VEDIO
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/youku_web_dingyue.json --productId=$PRODUCT_YOUKU --action=ACTION_FOLLOWEE_LIST


echo "=====Douyin====="
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/douyin_userinfo.json --productId=$PRODUCT_DOUYIN --action=ACTION_USER_INFO


echo "=====YSYCAMERA====="
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/ysycamera_userinfo.json --productId=$PRODUCT_YSYCAMERA --action=ACTION_USER_INFO

echo "=====CAMERA360====="
$BIN_PARSER --mode=RawFile --input=$FILE_PATH/camera360_userinfo.json --productId=$PRODUCT_CAMERA360 --action=ACTION_USER_INFO



