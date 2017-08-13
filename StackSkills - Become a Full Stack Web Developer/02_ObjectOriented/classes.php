<?php
require "helpers.php";
pageTop();

//define a class circle
class circle{

    /*
    * Class members can be public, protected, or private
    * public    - can be accessed anywhere
    * protected - can be accessed within objects of the class or subclasses
    * private   - can only be accessed within objects of the class 
    */
    public $radius;

    /*
    * Methods can also have public, protected, or private access
    * the default access for method is public
    */

    /*
    * this is the class constructor, will be called when an object of this 
    * class is created
    */
    function __construct($radius){
        $this->radius = $radius;
    }

    //a method (function) that returns the area
    function area(){
        return M_PI * $this->radius ** 2;
    }

}

$rad = 5;
$aCircle = new circle($rad);
echo "<p>The area of a circle with radius $rad is " . $aCircle->area() . "</p>";


?>