<?php
/**
 * User: solar
 * Date: 2019/1/9
 * Time: 10:17
 */

$z = [
    1=>100,
    2=> 100
]; // 假设z_1（ $z[1] ）、z_2 ( $z[2] ) 权重都是100

$x = [
    1 => [
        1 => 10,
        2 => 11,
        3 => 12,
        4 => 13,
        5 => 14,
    ],
    2 => [
        1 => 20,
        2 => 21,
        3 => 22,
        4 => 23,
        5 => 24,
    ],
]; // 各个场景五种姿势20s内的数量

$y = [
    1 => [
        1 => 10,
        2 => -11,
        3 => 12,
        4 => 13,
        5 => 14,
    ],
    2 => [
        1 => 20,
        2 => -21,
        3 => 22,
        4 => 23,
        5 => 24,
    ],
]; // 各个场景五种姿势对应的权重


// 计算学生认真程度
function sigma($x, $y, $z){
    $denominator = $numerator = 0; // 初始化分子分母， 注意分母做除法不能为0此处仅仅初始化使用
    //$layer = count($z);
    foreach ($z as $key => $value) {
        foreach ($x[$key] as $k=>$v) {
            // $v : x_11 x_12 x_13 x_14 x_15 x_21 x_22 x_23 x_24 x_25
            // $y[$key][$k] : y_11 y_12 y_13 y_14 y_15 y_21 y_22 y_23 y_24 y_25
            // $value: z_1 z_1 z_1 z_1 z_1  z_2 z_2 z_2 z_2 z_2
            $numerator += $v * $y[$key][$k] * $value;
            $denominator += $v;
        }
    }

    if ($denominator != 0 ) {
        //echo $numerator, PHP_EOL, $denominator, PHP_EOL;
        return $numerator / $denominator;
    }

    return 0; // 分母为0 异常
}

echo sigma($x, $y, $z), PHP_EOL;