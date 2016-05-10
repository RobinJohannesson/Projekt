<?php
header('Content-type: text/html; charset=utf-8');
$dbhost = "localhost";
$dbuser = "root"; //Ange MySQL Namn här
$dbpass = "hejhej123"; //Ange MySQL Lösenord här
$dbname = "newhorizons";
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
$conn->set_charset("utf8");

$query = "";


/*$query = "SELECT * FROM vacation";
$result = mysqli_query($conn, $query);
$num_rows = mysqli_num_rows($result);


$numbers = array();

$numbers = UniqueRandomNumbersWithinRange(0, $num_rows-1, 3);

*/

error_reporting(0);
@ini_set('display_errors', 0);
?>
<!DOCTYPE HTML>
<html>

<head>
    <meta http-equiv="Content-type" content="text/html" charset="utf-8">
    <link type="text/css" rel="stylesheet" href="style.css">
    <link href='https://fonts.googleapis.com/css?family=Cinzel' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" href="img/horizon_dark_sunset.jpg" type="image/x-icon">
    <link rel="icon" href="img/horizon_dark_sunset.jpg" type="image/x-icon">
    <title>Horizon</title>
</head>

<body>
<img src="img/Alexandria.jpg" class="background_image" alt="passande bakgrund för sidan">
    <header>
        <h1><a href="index.html">Horizon</a></h1>
        <h2 class="under_rubrik_text">Du väljer kriterier, Vi tar fram resan</h2>
        <div class="container">                 
            <ol class="breadcrumb">
                <li><a href="index.html">&gt;&gt;Start</a></li>
                <li><a href="kriterier.html">&gt;&gt;Kriterier</a></li>
                <li><a href="show_country.html">&gt;&gt;Länder</a></li>
                <li>&gt;&gt;Städer</li>
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
    <div id="wrapper">
        <?php

            if(isset($_GET['id'])) {
                $query = "SELECT * FROM countries WHERE id = " . $_GET['id'];
            }
            $result = mysqli_query($conn, $query);

            if($result) {
                while($row = mysqli_fetch_assoc($result)) {

                    $query = "SELECT * FROM countries WHERE land = '" . $row['land'] . "'";
                    $result = mysqli_query($conn, $query);
                    $fetchAll = mysqli_fetch_all($result,MYSQLI_ASSOC);


                    echo ' <h2>'
                        . $row['land'] .
                    '</h2>
                <div class="box" id="fact">
                    <p>' .  $fetchAll[0]['countryInfo'] . '</p>
                </div>
                <div id="widget_box">
                    <div id="widget_head">
                        <h2>3 Städer</h2>
                    </div>
                    <div class="widget_content" id="widget_content_first">
                        <a href="show_city.php?stad='.  $fetchAll[0]['stad'].  '">
                <img alt="'  . (isset($fetchAll[0] ) ? $fetchAll[0]['stad']  : "img").  '" class="widget" src="img/'. strtolower($fetchAll[0]['land']) . '/' . strtolower($fetchAll[0]['stad']) .'/' . (isset($fetchAll[0] ) ? $fetchAll[0]['img1']  : "").  '">

                            <div id="widget_text">
                                <h2>' .(isset($fetchAll[0] ) ? $fetchAll[0]['stad']  : "") . '</h2>
                            </div>
                        </a>
                    </div>
                    <div class="widget_content" id="widget_content_second">
                        <a href="show_city.php?stad='.  $fetchAll[1]['stad'].  '">
                <img alt="'  . (isset($fetchAll[1] ) ? $fetchAll[1]['stad']  : "img").  '" class="widget" src="img/' . strtolower($fetchAll[1]['land']) . '/' . strtolower($fetchAll[1]['stad']) .'/' . (isset($fetchAll[1] ) ? $fetchAll[1]['img1']  : "").  '">

                            <div id="widget_text">
                                <h2>' . (isset($fetchAll[1] ) ? $fetchAll[1]['stad']  : "") . '</h2>
                            </div>
                        </a>
                    </div>
                    <div class="widget_content" id="widget_content_third">
                        <a href="show_city.php?stad='.  $fetchAll[2]['stad'].  '">
                <img alt="'  . (isset($fetchAll[2] ) ? $fetchAll[2]['stad']  : "img").  '" class="widget" src="img/'. strtolower($fetchAll[2]['land']) . '/' . strtolower($fetchAll[2]['stad']) .'/' . (isset($fetchAll[2] ) ? utf8_encode($fetchAll[2]['img1'])  : "").  '">

                            <div id="widget_text">
                                <h2>'. (isset($fetchAll[2] ) ? $fetchAll[2]['stad']  : "") . '</h2>
                            </div>
                        </a>
                    </div>
                    

                </div>
                <footer>
                </footer> ';
                }

            }

        ?>
        <!--
        <h2>
                Egypten
            </h2>
        <div class="box" id="fact">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut felis lorem. Proin consequat arcu sed rhoncus aliquet. Morbi gravida, dui ut vestibulum porta, justo ligula molestie nulla, a volutpat tortor tortor eget massa. Praesent in ultrices ligula. Quisque elit mi, facilisis vitae tempus non, tempus at magna. Ut sed auctor risus, ut ornare massa. Suspendisse ut cursus nisi. Donec ullamcorper enim ante, ut interdum neque lobortis quis. Donec a ultrices justo. Suspendisse in ipsum dignissim, blandit dui ac, elementum metus. Suspendisse non tempus sapien. Aliquam quis posuere lacus. Curabitur et lorem risus. Duis posuere dapibus tincidunt. Integer quis interdum ante, vitae fermentum felis. Duis viverra erat nunc, eget mattis tellus cursus a. Proin urna dui, posuere nec turpis sit amet, placerat porttitor risus. Nullam commodo risus eros, vel consequat lorem cursus non. Mauris a semper ligula. Aenean eget velit fermentum, vestibulum dui sit amet, luctus felis. Phasellus auctor consequat justo, et cursus orci maximus eget. Suspendisse enim justo, imperdiet in diam at, aliquet gravida diam. Suspendisse quis arcu sed nunc aliquam convallis sit amet vitae sapien.</p>
        </div>
        <div id="widget_box">
            <div id="widget_head">
                <h2>3 Städer</h2>
            </div>
            <div class="widget_content" id="widget_content_first">
                <a href="kairo.html">
                    <div id="widget_first" class="widget">
                    </div>
                    <div id="widget_text">
                        <h2>Kairo</h2>
                    </div>
                </a>
            </div>
            <div class="widget_content" id="widget_content_second">
                <a href="alexandria.html">
                    <div id="widget_second" class="widget">
                    </div>
                    <div id="widget_text">
                        <h2>Alexandria</h2>
                    </div>
                </a>
            </div>
            <div class="widget_content" id="widget_content_third">
                <a href="luxor.html">
                    <div id="widget_third" class="widget">
                    </div>
                    <div id="widget_text">
                        <h2>Luxor</h2>
                    </div>
                </a>
            </div>
        </div>
        <footer>
        </footer> -->
    </div>
</body>

</html>











