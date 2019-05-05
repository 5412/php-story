<?php
function get_ext1($file_name){
return strrchr($file_name, '.');

}


function get_ext2($file_name){

return substr($file_name, strrpos($file_name, '.'));

}


function get_ext3($file_name){

return array_pop(explode('.', $file_name));

}


function get_ext4($file_name){

$p = pathinfo($file_name);

return $p['extension'];

}


function get_ext5($file_name){

return strrev(substr(strrev($file_name), 0, strpos(strrev($file_name), '.')));

}

function get_ext6($file_name) {
    $tok = strtok($string, '.'); //使用strtok将字符串分割成一个个令牌 
    while ($tok) 
    { 
        $arr[]= $tok;  
        $tok = strtok('.'); //该函数会保持它自己的内部指针在字符串中的位置, 
                        //如果想重置指针,可以将该字符串传给这个函数.  
                        //所以当第二次调用strtok()函数时,如果对上一次的已分割的字符串进行分割,第1个参数可以省略 
    } 
    $count= count($arr); 
    $i= $count-1; 
    $file_type= $arr[$i];
    return $file_type;
}
