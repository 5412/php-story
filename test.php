<html>
<body>

<?php
// function dbjhash($string) {
//     $hash = 0;
//     $len = strlen($string);
//     for ($i=0;$i<$len;$i++) {
//         echo $hash, ':', ($hash<<1),'+', ord($string[$i]), PHP_EOL;
//         $hash += ($hash<<1) + ord($string[$i]);
//     }
//     return $hash;
// }
// //echo dbjhash("solar is  pwx"), PHP_EOL;

// //for ($a='a'; $a < 'a' + 26; $a++) {
// //   echo $a, PHP_EOL;
// //}
// //
// $a = 'a';
// echo $a + 1, PHP_EOL;
// $a++;
// echo $a, PHP_EOL;
// echo ++$a, PHP_EOL;
// echo $a + 26, PHP_EOL;
// for($i=1; $i<26; $i++) {
//     echo $a,PHP_EOL;
//     $a++;
// }

// echo intval("0e830400451993494058024219903391")
$arr2 = [];
$arr = [1,2,3,4,5,6];
foreach($arr as  $key =>&$value) {
    $arr2[] = $value;
}

foreach($arr as  $key =>$value) {
    $arr2[] = $value;
    var_dump($arr);
}

foreach($arr as  $key =>$value) {
    $arr2[] = $value;
    var_dump($arr);
}

var_dump($arr);
var_dump($arr2);
?>
