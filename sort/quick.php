<?php
/**
 * User: solar
 * Date: 2019/4/7
 * Time: 20:51
 */

function quickSort($input) {

    $l = count($input);
    if ($l <= 1) {
        return $input;
    }

    $baseNum = $input[0];
    $leftArray = [];
    $rightArray = [];

    for ($i=1;  $i< $l; $i++) {
        if ($input[$i] < $baseNum) {
            $leftArray[] = $input[$i];
        } else {
            $rightArray[] = $input[$i];
        }
    }

    $leftArray = quickSort($leftArray);
    $rightArray = quickSort($rightArray);

    return array_merge($leftArray, [$baseNum], $rightArray);

}

$input = [1,3,2,6,4,5,7,9,8,13,12,11];

$input = quickSort($input);

print_r($input);