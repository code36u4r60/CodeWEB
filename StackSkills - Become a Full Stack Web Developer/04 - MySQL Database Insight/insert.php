<!DOCTYPE html>
<html>
<head></head>
<body>
    <form action="insert.php" method="post">
    <p>Add a languag: <input type="text" name="language"/></p>
    <p><input type="submit" value="Submit"></p>
    </form> 
</body>
</html>

<?php
//connect to database
$user = "root";
$pwd = "toor";
$database = "phpCourse";
$conn = new mysqli("127.0.0.1", $user, $pwd, $database);

//if there is POST data, insert it into the database
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $language = $_POST['language'];
    $sql="INSERT INTO language (name) VALUES ('$language')";

    //make sure the query is valid or log the error:
    if($conn->query($sql) != TRUE){
        echo "Error: " . $sql . "<br>" .$conn->error;
    }
}

//always present the table:
$sql = "SELECT name FROM language ORDER BY name ASC";
$result = $conn->query($sql);
echo "<table border>";
while($row = $result->fetch_assoc()){
    echo "<tr><td>" . $row['name'] . "</td></tr>";
}
echo "</table>";
?>