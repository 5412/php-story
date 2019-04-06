<?php
$doc = new DOMDocument();
$doc->loadHTML(file_get_contents("/Users/piaoweixiong/taisha/Download/docTest.doc"));
//var_export($doc);
//echo $doc->saveHTML();
//foreach ($doc->childNodes as $item) {
//    if ($item->nodeType == XML_PI_NODE)
//    $doc->removeChild($item); // remove hack
//}

//foreach ($doc->childNodes[0] as $item) {
//    //echo $item->nodeValue;
//    echo "solar";
//    echo PHP_EOL;
//    var_dump($item);
//}

foreach ($doc->getElementsByTagName("span") as $item) {
    echo $item->nodeValue;
    echo PHP_EOL;
}
//echo $doc->saveHTML();