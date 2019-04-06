<?php

class Pay {
    protected $uid;
    protected $token;
    protected $url;
    protected $isType;
    protected $notifyUrl;
    protected $returnUrl;

    function __construct( $config ) {
        if (is_array($config)) {
            $this->uid = $config['uid'];
            $this->token = $config['token'];
            $this->url = $config['url'];
            $this->isType = $config['isType'];
            $this->notifyUrl = $config['notifyUrl'];
            $this->returnUrl = $config['returnUrl'];
        }
    }

    function doPay($order) {
        $order['uid'] = $this->uid;
        $order['token'] = $this->token;
        $order['istype'] = $this->isType;
        $order['notify_url'] = $this->notifyUrl;
        $order['return_url'] = $this->returnUrl;
        ksort($order);
        $keyStr = implode($order, '+');
        $key = md5($keyStr);
        $order['key'] = $key;
        return $this->curl_post($order);
    }

    function curl_post($order) {
        $ch = curl_init($this->url);
        curl_setopt($ch, CURLOPT_HEADER, 0);//设置header
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);//要求结果为字符串且输出到屏幕上
        curl_setopt($ch, CURLOPT_POST, 1);//post提交方式
        curl_setopt($ch, CURLOPT_POSTFIELDS, $order);
        $data = curl_exec($ch);//运行curl
        curl_close($ch);
        return $data;
    }
}