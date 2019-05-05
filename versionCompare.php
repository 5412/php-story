<?php

function versionCompare(string $a,  string $b) :bool {
    $ver1 = explode('.', $a);
    $ver2 = explode('.', $b);
    //var_dump($ver1);die;
    $i =  0;
    while($i < count($ver1) && $i< count($ver2)) {
        if($ver1[$i] > $ver2[$i]) {
            return true;
        }
        $i++;
    }
    return false;
}

var_dump(versionCompare('1.1.3c', '1.1.3b'));