<?php

require "user.php";

$array = array();

if(isset($_POST['user'])) {
    $name = $_POST['user'];
    $array[0] = $name;
}

if(isset($_POST['password'])) {
    $password = $_POST['password'];
    $array[1] = $password;
}

$user = new User($array);

$user->connectToDB();
$user->logIn();

if($user->logIn()) {
    $_SESSION['user'] = "Logged In";
    header('Location: profilStart.php');
}