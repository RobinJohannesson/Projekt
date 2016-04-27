<?php
$dbhost = "localhost";
$dbuser = "root"; //Ange MySQL Namn här
$dbpass = "hejhej123"; //Ange MySQL Lösenord här
$dbname = "newhorizons";
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
$conn->set_charset("utf8");

$input = "";

if(isset($_POST['input'])) {
    $input = $_POST['input'];
}

$query = "SELECT * FROM vacation";
$result = mysqli_query($conn, $query);
$num_rows = mysqli_num_rows($result);


$numbers = array();

$numbers = UniqueRandomNumbersWithinRange(0, $num_rows-1, 3);






function UniqueRandomNumbersWithinRange($min, $max, $quantity) {
    $numbers = range($min, $max);
    shuffle($numbers);
    return array_slice($numbers, 0, $quantity);
}