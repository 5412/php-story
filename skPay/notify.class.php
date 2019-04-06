<?php

class Notify {
    protected $token;
    function __construct( $token )
    {
        $this->token = $token;
    }

    function validate() {
        $post = $_POST;
        $key = $post['key'];
        unset($post['key']);
        $post['token'] = $this->token;
        ksort($post);

        if (md5(implode($post, '+')) === $key) {
            return true;
        }

        return  false;
    }
}