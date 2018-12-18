<?php

$path = "./ascii.php";
//$data = ['a' => 1];
$url = "https://www.taisha.org/service/interface/upload-test/";
$curl = curl_init();
curl_setopt($curl, CURLOPT_SAFE_UPLOAD, true);
$data = array('file' => new \CURLFile(realpath($path)));
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_POST, 1 );
curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($curl, CURLOPT_USERAGENT,"TEST");
$result = curl_exec($curl);
$error = curl_error($curl);

var_export($result);
var_export($error);

