<?php
$arr = range(1,10000);
$arr2 = [];
$mem1 = memory_get_usage();
$t1 = time();
for($i=0; $i<100; $i++) {
    foreach ($arr as $a) {
        array_push($arr2, $a);
    }
}
$t2 = time();
$mem2 = memory_get_usage();

echo "merge函数100次循环执行时间为", ($t2-$t1), "所用内存为：" . ($mem2 - $mem1) . PHP_EOL;
