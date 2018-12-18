<?php
function fileList($dir, $pattern='')  {
    $list = [];
    $dirHandle = opendir($dir);
    if ($dirHandle) {
        while($file = readdir($dirHandle)) {
            if ($file == '.' or $file == '..') {
                continue;
            }

            $tmp = realpath($dir . '/' . $file);
            if (is_dir($tmp)) {
                $subList = fileList($tmp);
                if (! empty($subList)) {
                    $list[] = $subList;
                }
            } else {
                if($pattern === '' or preg_match($pattern, $tmp)) {
                    $list[] = $tmp;
                }
            }
        }
        closedir($dirHandle);
    }
    return $list;
}

$dir = '/Users/piaoweixiong/gotest/fmt';
print_r(fileList($dir));

