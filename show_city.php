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
    <body id="body_resa">
		<header>
			<h1><a href="index.html">Horizon</a></h1>
            <h2 class="under_rubrik_text">Du väljer kriterier, Vi tar fram resan</h2>
            <div class="container">                 
                <ol class="breadcrumb">
                    <li><a href="index.html">&gt;&gt;Start</a></li>
                    <li><a href="kriterier.html">&gt;&gt;Kriterier</a></li>
                </ol>
            </div>
            <div class="dropdown">
            <a href="kontakt.html">Om oss</a>
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
						<img src="img/' . $row['land'] . '/' . $row['stad'] . '/'. $row['img1'] . '" class="img_cities" alt="img">
						<p id="city_description">' . $row['cityInfo'] . '
						</p>
					</div>';


				echo '<div class="booking_box">
				<h2 class="form_headings">Förslag på aktiviteter</h2>
				<p class="white_text">
					Klicka på bilderna för att boka just dessa aktiviteter
				</p>
				<a href="' . $row['imgLink1'] . '"><img src="img/' . $row['land'] . '/' .$row['stad'].'/'. $row['img2'] . '" class="activity_img"></a>
				<a href="' . $row['imgLink2'] . '"><img src="img/' . $row['land'] . '/' .$row['stad'].'/'. $row['img3'] . '" class="activity_img"></a>
				<div class="gather">
				<p class="activity_text">
					' . $row['imgText1'] . '
				</p>
				<p class="activity_text"> 
					' . $row['imgText2'] . '
				</p>
				</div>
				<a href="' . $row['imgLink3'] . '"><img src="img/' . $row['land'] . '/' .$row['stad'].'/'. $row['img4'] . '" class="activity_img"></a>
				<a href="' . $row['imgLink4'] . '"><img src="img/' . $row['land'] . '/' .$row['stad'].'/'. $row['img5'] . '" class="activity_img"></a>
				<div class="gather">
				<p class="activity_text">
					' . $row['imgText3'] . '
				</p>
				<p class="activity_text">
					' . $row['imgText4'] . '
				</p>
				</div>
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
		</section>
	</body>
</html>


