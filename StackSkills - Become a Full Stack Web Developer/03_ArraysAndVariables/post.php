<?php
require "../02_ObjectOriented/helpers.php";
pageTop();
/*
    $_POST is an array whose contents come from the HTTP POST method.

    POST data is not visible in the address bar, so sending data via POST is more secure.
*/

$name = $_POST['name'];
$age = $_POST['age'];

echo "Hello, $name. I see you are $age years old!";

pageBottom();
?>