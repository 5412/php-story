<?php
include_once ("./pay.class.php");
$config = [];
$config['uid'] = 484;
$config['token'] = 'e36e2d230c26be135059e5053acd5853';
$config['url'] = 'https://www.ji152.cn/pay';
$config['isType'] = 1;
$config['notifyUrl'] = "http://aaa.com";
$config['returnUrl'] = "http://bbb.com";


$order = [];
$order['price'] = 0.01;
$order['orderid'] = 123123;
$order['orderuid'] = 1;
$order['goodsname'] = '测试产品';

$skPay = new Pay($config);
$data = $skPay->doPay($order);
echo $data;