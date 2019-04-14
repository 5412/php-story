<?php

function myScanDir($filename) {
    $files = [];
    if (is_dir($filename)) {
        $handle = opendir($filename);
        while($file = readDir($handle)) {
            if (in_array($file, [".", ".."])) {
                continue;
            }
            $chirldFilename = $filename . DIRECTORY_SEPARATOR . $file;
            if (is_dir($chirldFilename)) {
                $files[$file] = myScanDir($chirldFilename);
            } else {
                $files[] = $file;
            }
        }
        closedir($handle);
    }
    return $files;
}

var_export(myScanDir('/Users/piaoweixiong/phptest/solar'));
