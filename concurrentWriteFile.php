<?php
function myWrite($filename, $output) {
    $handle = fopen($filename);
    if(flock($handle, LOCK_EX)) {
        fwrite($handle, $output);
        fflush($handle);
        flock($handle, LOCK_UN);
    } else {
        throw new exception("文件被占用");
    }
    fclose($handle);
}


