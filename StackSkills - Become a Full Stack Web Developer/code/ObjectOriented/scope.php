<?php
require "helpers.php";
pageTop();

//declare $num at top level:
$num = 4;

function setNum(){
    //global $num;
    $num = 5;
    echo "\$num in function setNum() is $num<br/>";
}

echo "\$num before calling setNum() is $num<br/>";
setNum();
echo "\$num after calling setNum() is $num<br/>";

pageBottom();
?>