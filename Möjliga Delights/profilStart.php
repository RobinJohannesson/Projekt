<?php
session_start();
if(!isset($_SESSION['user']) || $_SESSION['user'] != "Logged In") {
    header('Location: index.html');
} else {

}

?>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <link type="text/css" rel="stylesheet" href="style.css">
    <link href='https://fonts.googleapis.com/css?family=Condiment' rel='stylesheet' type='text/css'>
    <title>Horizon Min sida</title>
</head>
<body>
<header id="headProf">
    <h1>
        Min sida
    </h1>
    <?php require('profile.php'); ?>
</header>
<div id="wrapper">
    <section id="profSect">
        <nav id="profilNav1">
            <ul id="profilNavUl">
                <li class="profilNavLi_1"><a href="profilSparKrit.php"><img src="check.png" height="120px" width="120px">Sparade Kriterie-listor</a></li>
                <li class="profilNavLi_1"><a href="profilSparRes.html"><img src="paper.png" height="120px" width="120px">Sparade resor</a></li>
                <li class="profilNavLi_1"><a href="profiI_inst.html"><img src="cogs.png" height="120px" width="136px">Profilinställningar</a></li>
            </ul>
        </nav>
    </section>
    <footer>
    </footer>
</div>
</body>
</html>