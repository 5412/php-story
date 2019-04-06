<?php
$arr = range(1,10000);
$arr2 = [];
$mem1 = memory_get_usage();
$t1 = time();
for($i=0; $i<5; $i++) {
    foreach ($arr as $a) {
        $arr2 = array_merge($arr2, [$a]);
    }
}
$t2 = time();
$mem2 = memory_get_usage();

echo "merge函数1次循环执行时间为", ($t2-$t1), "所用内存为：" . ($mem2 - $mem1) . PHP_EOL;

$arr = [1=>"1", 2=>"2"];
var_dump($arr, [1=>"3"]);
