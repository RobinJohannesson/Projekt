<?php
session_start();

?>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <link type="text/css" rel="stylesheet" href="style.css">
        <link href='https://fonts.googleapis.com/css?family=Cinzel' rel='stylesheet' type='text/css'>
        <link rel="shortcut icon" href="img/horizon_dark_sunset.jpg" type="image/x-icon">
        <link rel="icon" href="img/horizon_dark_sunset.jpg" type="image/x-icon">
        <title>Horizon Start</title>
    </head>
    <body>
        <header>
            <h1><a href="index.html">Horizon</a></h1>
            <h2 class="under_rubrik_text">Du väljer kriterier, Vi tar fram resan</h2>
            <div class="container">                 
            <ol class="breadcrumb">
                <li>&gt;&gt;Start</li>
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
        <div id="wrapper_nr2">
            <nav id="indexNav">
                <ul id="indexNavUl">
                    <li class="indexNavLi_1">&middot;</li>
                    <li class="indexNavLi_1"><a href="kriterier.html" class="indexNavA">Bestäm kriterier</a></li>
                    <li class="indexNavLi_1">&middot;</li>
                    <?php
                    if(isset($_SESSION['user']) && $_SESSION['user'] == "Logged In") {
                        echo '<li class="indexNavLi_2"><a href="profilSparKrit.php" class="indexNavA">Sparade Resor/Kriterier</a></li>';
                    } else {
                        echo '<li class="indexNavLi_2"><a href="login.html" class="indexNavA">Logga in</a></li>';
                    }
                    ?>
                    <li class="indexNavLi_1">&middot;</li>
                    <li class="indexNavLi_2"><a href="kontakt.html" class="indexNavA">Om oss</a></li>
                   <!-- <li class="indexNavLi_1">&middot;</li> -->
                </ul>
            </nav>
            <footer>
            </footer>
        </div>
    </body>
</html>