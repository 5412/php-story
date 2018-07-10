<?php
    
// Test using generator for example range xrange

function xrange($start, $end, $step = 1) {
    if ($start < $end) {
        if ($step < 0) {
            throw new Exception('Step must +ve');
        }
        for ($i = $start; $i < $end; $i += $step) {
            yield $i => 'name:' . $i;
        }
    } elseif ($start > $end) {
        if ($step > 0) {
            throw new Exception('Step must -ve');
        }
        for ($i = $start; $i > $end; $i += $step) {
            yield $i;
        }
    } else {
        throw new Exception('Wrong start and end');
    }
}
$memory1 = memory_get_usage();
$arr = [];
for ($i = 1; $i <= 1000; $i++) {
    $arr[$i] = 'name:' . $i;
}
foreach ($arr as $key => $value) {
    echo $key . '=>' . $value, PHP_EOL;
}
$memory2 = memory_get_usage();

foreach (xrange(1,1000) as $key => $value) {
    echo $key . '=>' . $value, PHP_EOL;
}

$memory3 = memory_get_usage();

echo 'Range use memory is:', ($memory2 - $memory1), PHP_EOL, 'Xrange use memory is:', ($memory3 - $memory2), PHP_EOL;
?>
