<?php

$http = new swoole_http_server("0.0.0.0", 8888);
$http->on('request', function ($request, $response) {
    $html = "<h1>Hello Swoole.</h1>";
    $response->end($html);
});

$http->start();