<?php

$dbhost = "localhost";
$dbuser = "root"; //Ange MySQL Namn här
$dbpass = "hejhej123"; //Ange MySQL Lösenord här
$dbname = "newhorizons";
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
$conn->set_charset("utf8");

$query1 = "";

include('save.php');


$input = "";


if(isset($_POST['input'])) {
    $input = $_POST['input'];
}

$query1 = "";
$query2 = "";

require("save.php");

$query = $query1;
$result = mysqli_query($conn, $query);
//$num_rows = mysqli_num_rows($result);


$result1 = mysqli_query($conn, $query2);

//$contriesWhoCriteriaHighest = array();
error_reporting(0);
@ini_set('display_errors', 0);
echo $query2;
?>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <link type="text/css" rel="stylesheet" href="style.css">
        <link href='https://fonts.googleapis.com/css?family=Cinzel' rel='stylesheet' type='text/css'>
        <link rel="shortcut icon" href="img/horizon_dark_sunset.jpg" type="image/x-icon">
        <link rel="icon" href="img/horizon_dark_sunset.jpg" type="image/x-icon">
        <title>Horizon</title>
    </head>
    <body class="cloud">
        <header>
            <h1><a href="index.html">Horizon</a></h1>
            <h2 class="under_rubrik_text">Du väljer kriterier, Vi tar fram resan</h2>
            <div class="container">                 
                <ol class="breadcrumb">
                    <li><a href="index.html">&gt;&gt;Start</a></li>
                    <li><a href="kriterier.html">&gt;&gt;Kriterier</a></li>
                    <li class="active">&gt;&gt;Länder</li>
                </ol>
            </div>
            <div class="dropdown">
            <div class="dropbtn">
                <img src="img/arrow_dropdown.png" class="arrow_for_dropdown">
                <div class="dropdown_name">
                    <p>Wade</p>
                    <p>Wilson</p>
                </div>
                <img src="img/deadpool_avatar.png" class="avatar_img">
            </div>
            <div class="dropdown_content">
                <a href="#">Inställningar</a>
                <a href="#">Logga ut</a>
            </div>
        </div>
        </header>
        <div id="container_country">
           <div class="country_box">
               <?php

               while ($row = mysqli_fetch_assoc($result1)) {

                   echo '<a href="show_travel.php?id='. $row['id'] .'">
                   <img class="country_widget" id="first_country_widget" src="img/' . $row['land'] . '/' . $row['stad'].'/' . $row['img1'] . '">

                   <div class="country_text">
                        <h2>' . $row['land'] . '</h2>
                   </div>
                    </a>';
                   break;
               }
               ?>

           </div>
           <div class="country_box">
               <?php
               while ($row = mysqli_fetch_assoc($result1)) {

                   echo '<a href="show_travel.php?id='. $row['id'] .'">
                   <img class="country_widget" id="first_country_widget" src="img/' . $row['land'] . '/' . $row['stad'].'/' . $row['img1'] . '">

                   <div class="country_text">
                        <h2>' . $row['land'] . '</h2>
                   </div>
                    </a>';
                   break;
               }
               ?>

           </div>
           <div class="country_box">
               <?php
               while ($row = mysqli_fetch_assoc($result1)) {

                   echo '<a href="show_travel.php?id='. $row['id'] .'">
                   <img class="country_widget" id="first_country_widget" src="img/' . $row['land'] . '/' . $row['stad'].'/' . $row['img1'] . '">

                   <div class="country_text">
                        <h2>' . $row['land'] . '</h2>
                   </div>
                    </a>';
                   break;
               }
               ?>

           </div>
            <footer>
            </footer>
        </div>
    </body>
</html>
<?php
mysqli_close($conn);
?>
