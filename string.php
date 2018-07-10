<?php
$str = "1于大傻子";
echo mb_strlen($str).PHP_EOL;
echo $str[0], PHP_EOL;
echo $str[1], PHP_EOL;
echo $str[2], PHP_EOL;
echo $str[3], PHP_EOL;

echo $str, PHP_EOL;



$num = strlen($str);
echo $num.PHP_EOL;

for ($i=0;$i<$num;$i++) {
    echo $i,':',$str[$i], PHP_EOL;
}
