<?php

$content = '<p class="f_center"><img alt="广西上万吨柿饼遭非法染色被指上头有人无人监管" src="data/attachment/portal/201810/21/201810thxuzgsx0zl.jpeg" style="margin: 0px auto; display: block;" /></p>';

$name = 'data/attachment/portal/201810/21/201810thxuzgsx0zl.jpeg';

$bigimg = 'data/attachment/portal/201810/21/150051az6bl1ialal1sqay.jpeg';

//$content = preg_replace('/<img[\s\S]*('.preg_quote($name, '/').')[\s\S]*\/>/iUs', '<img src="'. $bigimg .'" />', $content);
//
//
$content = preg_replace('/<\s*img(.*)'.preg_quote($name, '/').'(.*)>/iUs', '<img src="'. $bigimg .'" />', $content);
echo $content;
//

//$matches = [];

//$pattern = '/<img[\s\S]*(data\/attachment\/portal\/201810\/21\/201810thxuzgsx0zl\.jpeg)[\s\S]*\/>/i';
//preg_match($pattern,$content, $matches);

//var_export($matches);
