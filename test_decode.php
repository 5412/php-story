<?php
$str = "3d9a2e33-0f0a-41de-ae9f-fa138abc0f70";
$arr = explode('-', $str);
print_r($arr);

foreach($arr as $value) {
    for ($i=0;$i<strlen($value);$i+=2) {      
        $d1 = substr($arr[0], $i, 2);
        $num = hexdec($d1);
        echo chr($num);
    }
}
