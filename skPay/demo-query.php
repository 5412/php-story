<?php

include_once './query.class.php';

$config = [];
$config['uid'] = 484;
$config['token'] = 'e36e2d230c26be135059e5053acd5853';
$config['url'] = 'https://www.ji152.cn/api/getStatusByOrderId';

$query = new Query($config);

$orderid = 123123;
echo $query->doQuery($orderid);
