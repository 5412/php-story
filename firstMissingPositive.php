<?php

function firstMissingPositive(array $input) :int {
    $l  = count($input);
    $i = 0;
    var_export($input);
    while($i < $l) {
        if ($input[$i] > 0 && $input[$i] <= $l && $input[$input[$i] - 1] != $input[$i]) {
            $temp = $input[$input[$i] - 1];
            $input[$input[$i] - 1] = $input[$i];
            $input[$i] = $temp;
        } else {
            $i++;
        }
        var_export($input);
    }
    var_export($input);
    $i = 0;
    while ($i < $l && $input[$i] == $i + 1) {
        $i++;
    }
    return $i;
}

var_export(firstMissingPositive([-1,1,3,2,5,7,8,4]));