<?php
include_once './notify.class.php';

$token = "e36e2d230c26be135059e5053acd5853";

$notify = new  Notify($token);

// 此处是基本的url参数验证
// 需自己实现自己的订单验证
if ($notify->validate()) {
    exit('OK');
}