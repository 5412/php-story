<?php
/**
 * User: solar
 * Date: 2019/4/7
 * Time: 20:29
 */

function insertSort(&$input) {
    $len=count($input);
    for($i=1; $i<$len; $i++) {
        $tmp = $input[$i];
        for($j=$i-1;$j>=0;$j--) {
            if($tmp < $input[$j]) {
                $input[$j+1] = $input[$j];
                $input[$j] = $tmp;
            } else {
                break;
            }
        }
    }
}

$input = [1,3,2,6,4,5,7,9,8,13,12,11];

insertSort($input);

print_r($input);