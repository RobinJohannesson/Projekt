<?php


$dbhost = "localhost";
$dbuser = "root"; //Ange MySQL Namn här
$dbpass = "hejhej123"; //Ange MySQL Lösenord här
$dbname = "newhorizons";
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
$conn->set_charset("utf8");

$query = "";

?>

<!DOCTYPE html>
<html>
    <head>
       <meta charset="utf-8">
	   <link type="text/css" rel="stylesheet" href="style.css">
        <link href='https://fonts.googleapis.com/css?family=Condiment' rel='stylesheet' type='text/css'>
        <link rel="shortcut icon" href="img/horizon_dark_sunset.jpg" type="image/x-icon">
        <link rel="icon" href="img/horizon_dark_sunset.jpg" type="image/x-icon">
       <title>Horizon</title>
    </head>
    <body id="kairo_body">
		<header>
			<h1><a href="index.html">Horizon</a></h1>
            <h2 class="under_rubrik_text">Du väljer kriterier, Vi tar fram resan</h2>
            <div class="container">                 
                <ol class="breadcrumb">
                    <li><a href="index.html">&gt;&gt;Start</a></li>
                    <li><a href="kriterier.html">&gt;&gt;Kriterier</a></li>
                    <li><a href="show_country.html">&gt;&gt;Länder</a></li>
                    <li><a href="show_travel">&gt;&gt;Städer</a></li>
                    <li>&gt;&gt;Kairo</li>
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
		<section class="show_city">

			<?php

			if(isset($_GET['stad'])) {
				$query = "SELECT * FROM countries WHERE stad = '" . $_GET['stad'] . "'";
			}
			$result = mysqli_query($conn, $query);

			if($result) {
			while($row = mysqli_fetch_assoc($result)) {

				echo '<h2 id="city_name">' . $row['stad'] . '</h2>
					<div class="description_box">
						<img src="img/' . $row['img1'] . '" class="img_cities" alt="img">
						<p id="city_description">' . $row['cityInfo'] . '
						</p>
					</div>';


				echo '<div class="booking_box">
				<h2 class="form_headings">Förslag på aktiviteter</h2>
				<p class="white_text">
					Klicka på bilderna för att boka just dessa aktiviteter
				</p>
				<a href="' . $row['imgLink1'] . '"><img src="img/' . $row['img2'] . '" class="activity_img" class="activity_left"></a>
				<a href="' . $row['imgLink2'] .  '"><img src="img/' . $row['img3'] . '" class="activity_img" class="activity_right"></a>
				<p class="activity_text" class="activity_left">
					' . $row['imgText1'] . '
				</p>
				<p class="activity_text" class="activity_right"> 
					' . $row['imgText2'] . '
				</p>
				<a href="'. $row['imgLink3'] .  '"><img src="img/' . $row['img4'] . '" class="activity_img" class="activity_left"></a>
				<a href="' . $row['imgLink4'] .  '"><img src="img/' . $row['img5'] .  '" class="activity_img" class="activity_right"></a>
				<p class="activity_text" class="activity_left">
					' . $row['imgText3'] . '
				</p>
				<p class="activity_text" class="activity_right">
					' . $row['imgText4'] . '
				</p>
				<h2 class="form_headings">Länkar till bokningssidor</h2>
				<p class="white_text">
					Hotell: ' . $row['hotellText'] . '
				</p>
				<p class="white_text">
					Flyg: ' . $row['flygText'] . '
				</p>
				<p class="white_text">
					Aktiviteter: '  . $row['aktivitetText'] . '
				</p>
			</div>';
                break;
			}

			}

			?>


			<!--<h2 id="city_name">Kairo</h2>
			<div class="description_box">
				<img src="img/kairo/Kairo.jpg" class="img_cities" alt="Kairo">
				<p id="city_description">
					Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
					Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
				</p>
			</div>
			<div class="booking_box">
				<h2 class="form_headings">Förslag på aktiviteter</h2>
				<p class="white_text">
					Klicka på bilderna för att boka just dessa aktiviteter
				</p>
				<a href="https://www.viatorcom.se/sv/7384/tours/Kairo/Flodkryssning-med-middag-pa-Nilen/d782-3124CAI16"><img src="img/kairo/flodkryssning_kairo.jpg" class="activity_img" class="activity_left"></a>
				<a href="https://www.viatorcom.se/sv/7384/tours/Kairo/Privat-rundtur-Pyramiderna-och-Sfinxen-i-Giza-Egyptiska-museet-Khan-el-Khalili-basaren/d782-3124CAI01"><img src="img/kairo/pyramider_kairo.jpg" class="activity_img" class="activity_right"></a>
				<p class="activity_text" class="activity_left">
					Flodkryssning med mat
				</p>
				<p class="activity_text" class="activity_right">
					Rundtur i pyramiderna
				</p>
				<a href="https://www.viatorcom.se/sv/7384/tours/Kairo/Local-Egyptian-Food-Tasting-and-Learning-From-Cairo/d782-11860P2"><img src="img/kairo/food_kairo.jpg" class="activity_img" class="activity_left"></a>
				<a href="https://www.viatorcom.se/sv/7384/tours/Kairo/Safari-tour-on-a-horse-or-camel-for-sunset-at-Giza/d782-18966P43"><img src="img/kairo/safari_kairo.jpg" class="activity_img" class="activity_right"></a>
				<p class="activity_text" class="activity_left">
					Matlagningslektion
				</p>
				<p class="activity_text" class="activity_right">
					Safari på kamel/häst
				</p>
				<h2 class="form_headings">Länkar till bokningssidor</h2>
				<p class="white_text">
					Hotell: www.hotell.se
				</p>
				<p class="white_text">
					Flyg: www.flyg.se
				</p>
				<p class="white_text">
					Aktiviteter: <a href="https://www.viatorcom.se/sv/7384/Kairo/d782-ttd">Viator</a>
				</p>
			</div>
			-->
		</section>
	</body>
</html>


