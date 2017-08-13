<?php
//wrap the page in HTML:
echo "<html><head><title>Decisions</title></head><body>";
$num = 5;
/*comparison operators:
> , < , >= , <= 
== equality
=== same value and type (identity)
!= not equal to
!== not identical to
*/

// if statement
echo "<h3>running if statement:</h3>";
if($num > 4){
    echo "<h3> $num is greater than 4 </h3>"; 
}

//if-else
echo "<h3>running if-else statement:</h3>";
if($num >= 0){
 echo "<h3>$num is positive</h3>";   
} else {
 echo "<h3>$num is zero or negative</h3>";
}

//if-else if ...
echo "<h3>running if-else if ... statement: </h3>";
if($num > 0){
    echo "<h3>$num is positive</h3>";
}else if($num < 0){
    echo "<h3>$num is negative </h3>";
}else{
    echo "<h3>$num is zero</h3>";
}

//switch statement
echo "<h3>running switch statement:</h3>";
switch ($num){
    case 1:
        echo "<h3>one</h3>";
        break;
    case 2:
        echo "<h3>two</h3>";
        break;
    /* ... */
    case 5:
        echo "<h3>five</h3>";
        break;
    default:
        echo "<h3>$num is not 1, 2, or 5</h3>";
}
   
//end of HTML wrapper:
echo "</body></html>";

?>