<?php
$arr = [[0],[1],[1], 00, '0', '00', '000', '0', false];
var_dump(array_unique($arr));
var_dump($arr);
$arr = array_flip($arr);
$arr = array_flip($arr);
var_dump($arr);

?>
