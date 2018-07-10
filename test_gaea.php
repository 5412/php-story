<?php

function genN($n) {
    function genT($len) {
        for ($i =1; $i<$len;$i++) {
            yield $i;
        }
    }

    foreach(genT($n) as $out) {
        printf("%d, ", $out);
    }

    printf("%d ", $out);
    printf("%d ", $out++);
    printf("%d ", ++$out);
    printf("%d ", ++$out);
}

//genN(15);

echo intval(11111111111111111111111111);
