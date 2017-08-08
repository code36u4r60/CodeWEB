<?php
/*
    Require includes the contents of a file. If the file does nor exist, an error is raised and execution ends.

    Includes does the same things as require, but if the file does not existe, includes raises a warning and execution continues.
*/
require "helpers.php"; //defines pageTop() and pageBottom()

pageTop();

$greeting = "hello";
$say_bye = "have a nice day";

//useful string functions:

//strlen: returns the length of a string
echo "<p>\"$greeting\" has " . strlen($greeting) . " characters</p>";

//str_word_count: returns the number of words in a string
echo "<p>\"$say_bye\" has " . str_word_count($say_bye) . "words</p>";

//strrev: reverses a string
echo "<p>\"$greeting\" backwards is \"" . strrev($greeting) . "\"</p>";

//strpos: returns the starting character position of the first match in a 
//string or FALSE if no match is found

$word = "wonderful";
//$word = "nice";

//$pos will be false if the word is not found, but a number id the word is found
if($pos = strpos($say_bye, $word)){
    echo "<p> \"$word\" is at position $pos in \"$say_bye\" </p>";
}else{
    echo "<p> \"$word\" not found in \"$say_bye\"</p>";
}

//str_replace: replace text in a string with new text
$say_bye = str_replace("nice" , $word, $say_bye);
echo "<p>$say_bye</p>";


pageBottom();


?>