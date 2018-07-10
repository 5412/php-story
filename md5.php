<?php
//公共必传参数
$data = array(
    'account'=>'3c5a395e6788b69fe4ecef27389004a',//API帐号
    'requesttime'=>1525251915,//请求时间，与服务器时间差不能超过60秒
);
$data['start'] = '2018-05-01';
$data['end'] = '2018-06-01';

ksort($data);
echo join('', $data) . PHP_EOL;
$sign = md5(join('',$data).'TaiShaApi00000001');
echo $sign . PHP_EOL;
