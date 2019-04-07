<?php
/**
 * User: solar
 * Date: 2019/4/7
 * Time: 19:46
 */

function bubbleSort(&$input) {

    $l = count($input);

    if ($l == 1) {
        return $input;
    }

    for ($i=1; $i< $l; $i++)  {
        for ($j= 0; $j< $l - $i; $j++)  {
            if ($input[$j] > $input[$j + 1]) {
                $temp = $input[$j +  1];
                $input[$j + 1] = $input[$j];
                $input[$j] = $temp;
            }
        }
    }
    //return 0;
}

$input = [1,3,2,6,4,5,7,9,8,13,12,11];

bubbleSort($input);

print_r($input);
