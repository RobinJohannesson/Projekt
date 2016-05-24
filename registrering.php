<?php

$dbhost = "localhost";
$dbuser = "root"; //Ange MySQL Namn här
$dbpass = "hejhej123"; //Ange MySQL Lösenord här
$dbname = "NewHorizons";
$connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

if(isset($_POST['firstname']) && isset($_POST['lastname']) && isset($_POST['email']) && isset($_POST['password']) && isset($_POST['password_repeat'])
&& $_POST['password'] == $_POST['password_repeat']) {

    $fname = "'" . $_POST['firstname'] . "'";
    $lname = "'" . $_POST['lastname'] . "'";
    $email = "'" . $_POST['email'] . "'";
    $password = "'". $_POST['password'] . "'";

    $query = "SELECT * FROM users WHERE name = '" . $_POST['email'] . "'";
    $result = mysqli_query($connection  , $query);
    $rows = mysqli_num_rows($result);

    if($rows == 0) {

        $query = "INSERT INTO users(name, password, firstname, lastname) VALUES(";
        $query .= "$email, $password, $fname, $lname)";
        $result = mysqli_query($connection, $query);
        header("Location: login.php");
        exit;
    } else {
        echo 'Kontot är redan registrerat. ';
        header( "Refresh:3; url=http://www.example.com/register.html", true, 303);
    }
}
?>