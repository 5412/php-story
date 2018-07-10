<?php
    ob_end_clean();  //清空（擦除）缓冲区并关闭输出缓冲
    ob_start();
    echo "韩立-hanli";
    include "./test.php";
    $content = ob_get_contents();//取得php页面输出的全部内容
    $fp = fopen("./ob.html", "w");
    fwrite($fp, $content);
    fclose($fp);
    ob_end_flush(); //关闭浏览器缓存
?> 
