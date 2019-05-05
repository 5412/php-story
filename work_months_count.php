<?php
function transform_date($input)
{
    $return = [];
    foreach($input as $value) {
        $temp['begin'] = strtotime($value[0]);
        if ($value[1] != 'present') {
            $temp['end'] = strtotime($value[1]);
        } else {
            $temp['end'] = time();
        }
        $return[] = $temp; 
    }
    return $return;
}

function work_months_count($input) 
{
    $input = transform_date($input);  
    array_multisort(array_column($input, 'begin') , $input);
    $timeLines = [];
    foreach($input as $value) {
        $len = count($timeLines);
        if ($len == 0) {
            $timeLines[] = $value;
            continue;
        } else {
            $timeLine = $timeLines[$len - 1];
        }
        if($value['begin'] <= $timeLine['end'] && $value['end'] > $timeLine['end']) {
            $timeLine['end'] = $value['end'];
            $timeLines[$len - 1] = $timeLine;
        } else if ($value['begin'] > $timeLine['end']) {
            $timeLine['begin'] = $value['begin'];
            $timeLine['end'] = $value['end'];
            $timeLines[] = $timeLine;
        } else {
            continue;
        }
    }

    $total = 0;
    foreach($timeLines as $value) {
        $total += $value['end'] - $value['begin'];
    }
    return intval($total / (3600 * 24 * 30));
}
$input = [
    ['2016-02-01 00:00:00', '2017-01-01 00:00:00'],
    ['2015-01-01 00:00:00', '2016-01-01 00:00:00'],
    ['2017-01-01 00:00:00', 'present'],
];

echo work_months_count($input);