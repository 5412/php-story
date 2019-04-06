<?php

class Query {
    protected $token;
    protected $uid;
    protected $url;

    function __construct($config)
    {
        $this->token = $config['token'];
        $this->uid = $config['uid'];
        $this->url = $config['url'];
    }

    function doQuery($orderid) {
        $post = [];
        $post['token'] =  $this->token;
        $post['uid'] = $this->uid;
        $post['orderid'] = $orderid;
        $post['r'] = $this->randStr(20);
        ksort($post);
        $keyStr = $post['uid'] . '+' . $post['orderid'] . '+' . $post['r'] . '+' . $post['token'];
        $key = md5($keyStr);
        $post['key'] = $key;
        return $this->curl_post($post);
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

    public function randStr($lenth){
        $chars    = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        $password = '';
        for ($i = 0; $i < $lenth; $i++) {
            $password .= $chars[mt_rand(0, strlen($chars) - 1)];
        }
        return $password;
    }
}