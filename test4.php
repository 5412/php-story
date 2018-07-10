<?php
$arr = [1,2,3,4];
list($one, $two, $three, $four) = $arr;
list($a[],$a[],$a[],$a[]) = $arr;

print_r($a);

var_dump($one);
var_dump($two);
var_dump($three);
var_dump($four);

