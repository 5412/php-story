<?php

class test {
    static $db1 = "aaaa";
    const DNM = "db1";
}
$db = "db1";
define("DB", "db1");
$dnm = "DNM";




echo test::{$dnm}, PHP_EOL;
echo test::${test::DNM} . PHP_EOL;
echo test::${DB} . PHP_EOL;
echo test::${$db} . PHP_EOL;
