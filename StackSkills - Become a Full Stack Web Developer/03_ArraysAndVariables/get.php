<?php
require "../02_ObjectOriented/helpers.php";
pageTop();
/*
    $_GET is an array whose contents come from the query string

    In this example, the required query string is ? name=<name>&age=<age>
    
    $_GET is typically not used for sending data that must remain secure, because the query string is visible in the address bar.
*/

$name = $_GET['name'];
$age = $_GET['age'];

echo "Hello, $name. I see you are $age years old!";

pageBottom();
?>