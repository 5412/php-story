<?php
/**
 * User: solar
 * Date: 2019/4/7
 * Time: 20:13
 */

function  selectSort(&$input) {

    $l = count($input);
    for ($i = 1; $i < $l;  $i++) {
        $max = $input[0];
        $maxIndex = 0;
        for ($j=0; $j<=$l-$i; $j++) {
            if ($max < $input[$j]) {
                $max = $input[$j];
                $maxIndex = $j;
            }
        }
        $temp = $input[$l-$i];
        $input[$l-$i] = $max;
        $input[$maxIndex] = $temp;
    }

}

$input = [1,3,2,6,4,5,7,9,8,13,12,11];

selectSort($input);

print_r($input);