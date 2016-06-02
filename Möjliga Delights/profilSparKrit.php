<?php
$dbhost = "localhost";
$dbuser = "root"; //Ange MySQL Namn här
$dbpass = "hejhej123"; //Ange MySQL Lösenord här
$dbname = "NewHorizons";
$connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
?>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <link type="text/css" rel="stylesheet" href="style.css">
        <link href='https://fonts.googleapis.com/css?family=Condiment' rel='stylesheet' type='text/css'>
        <title>Horizon Sparade Kriterier</title>
    </head>
    <body>

        <div id="profilWrapper">
            <header class="headerProf">
                <h1>
                    Sparade Kriterier
                </h1>
                <?php require('profile.php'); ?>
            </header>
            <div id="profKritSect_Surround">
                <section id="profKritSect">
                    <nav id="profilNav2">
                        <h2>Sparade kriterie-listor:</h2>
                        <ul id="profilNavUl">
                            <li class="profilNavLi_3">Äventyr i värme</li>
                            <li class="profilNavLi_3">Värme</li>
                            <li class="profilNavLi_3">Barnresor</li>
                            <li class="profilNavLi_3">Shoppingresa</li>
                        </ul>
                    </nav>
                    <div id="savedKritSubHeader">
                        <h3>Äventyr i värme</h3>
                    </div>
                    <div id="savedKritList">

                        <form class="checkboxes">
                            <legend>Äventyr</legend>
                                <?php
                                $query = "SELECT * FROM aventyr WHERE id = 1";
                                $result = mysqli_query($connection, $query);
                                $fetchAll = mysqli_fetch_all($result,MYSQLI_ASSOC);

                                foreach($fetchAll[0] as $column => $data) {
                                    echo '<p>';
                                    if($column == 'bergsklattring' && $data == '1') {
                                        echo "<input type='checkbox' name='bergsklattring' id='bergsklattring' class='savedKritListCheckbox'>";
                                        echo '<label for="bergsklattring">Bergsklättring</label>';
                                    }
                                    if($column == 'vandring' && $data == '1') {
                                        echo '<input type="checkbox" name="vandring" id="vandring" class="checkbox">';
							            echo '<label for="vandring">Vandring</label>';
                                    }
                                    if($column == 'kanot' && $data == '1') {
                                        echo '<input type="checkbox" name="kanot" id="kanot" class="checkbox">';
                                        echo '<label for="kanot">Kanot</label>';
                                    }
                                    if($column == 'backpacking' && $data == '1') {
                                        echo '<input type="checkbox" name="backpacking" id="backpacking" class="checkbox">';
							            echo '<label for="backpacking">Backpacking</label>';
                                    }
                                    if($column == 'safari' && $data == '1') {
                                        echo '<input type="checkbox" name="safari" id="safari" class="checkbox">';
							            echo '<label for="safari">Safari</label>';
                                    }
                                    if($column == 'skidor' && $data == '1') {
                                        echo '<input type="checkbox" name="skidor" id="skidor" class="checkbox">';
							            echo '<label for="skidor">Skidor</label>';
                                    }
                                    if($column == 'surfing' && $data == '1') {
                                        echo '<input type="checkbox" name="surfing" id="surfing" class="checkbox">';
							            echo '<label for="surfing">Surfing</label>';
                                    }
                                    if($column == 'dykning' && $data == '1') {
                                        echo '<input type="checkbox" name="dykning" id="dykning" class="checkbox">';
							            echo '<label for="dykning">Dykning</label>';
                                    }

                                    echo '</p>';
                                }
                                echo '<legend>Avslappning</legend>';

                                $query = "SELECT * FROM avslappning WHERE id = 1";
                                $result = mysqli_query($connection, $query);
                                $fetchAll = mysqli_fetch_all($result,MYSQLI_ASSOC);

                                foreach($fetchAll[0] as $column => $data) {
                                    echo '<p>';
                                    if($column == 'spa' && $data == '1') {
                                        echo '<input type="checkbox" name="spa" id="spa" class="checkbox">';
							            echo '<label for="spa">Spa</label>';
                                    }
                                    if($column == 'naturupplevelser' && $data == '1') {
							            echo '<input type="checkbox" name="nature" id="nature" class="checkbox">';
							            echo '<label for="nature">Naturupplevelser</label>';
                                    }
                                    if($column == 'solsemester' && $data == '1') {
                                        echo '<input type="checkbox" name="sun_vacation" id="sun_vacation" class="checkbox">';
							            echo '<label for="sun_vacation">Solsemester</label>';
                                    }
                                    if($column == 'yoga' && $data == '1') {
                                        echo '<input type="checkbox" name="yoga" id="yoga" class="checkbox">';
							            echo '<label for="yoga">Yoga</label>';
                                    }
                                    if($column == 'meditation' && $data == '1') {
                                        echo '<input type="checkbox" name="meditation" id="meditation" class="checkbox">';
							            echo '<label for="meditation">Meditation</label>';
                                    }
                                    echo '</p>';
                                }

                                echo '<legend>Kultur</legend>';

                                $query = "SELECT * FROM kultur WHERE id = 1";
                                $result = mysqli_query($connection, $query);
                                $fetchAll = mysqli_fetch_all($result,MYSQLI_ASSOC);

                                foreach($fetchAll[0] as $column => $data) {
                                    echo '<p>';
                                    if($column == 'sightseeing' && $data == '1') {
                                        echo '<input type="checkbox" name="sightseeing" id="sightseeing" class="checkbox">';
							            echo '<label for="sightseeing">Sightseeing</label>';
                                    }
                                    if($column == 'storstad' && $data == '1') {
                                        echo '<input type="checkbox" name="town" id="town" class="checkbox">';
							            echo '<label for="town">Storstad</label>';
                                    }
                                    if($column == 'historia' && $data == '1') {
                                        echo '<input type="checkbox" name="history" id="history" class="checkbox">';
							            echo '<label for="history">Historia</label>';
                                    }
                                    if($column == 'religion' && $data == '1') {
                                        echo '<input type="checkbox" name="religion" id="religion" class="checkbox">';
							            echo '<label for="religion">Religion</label>';
                                    }
                                    if($column == 'utbildningssyfte' && $data == '1') {
                                        echo '<input type="checkbox" name="education" id="education" class="checkbox">';
							            echo '<label for="education">Utbildningssyfte</label>';
                                    }
                                    if($column == 'matresa' && $data == '1') {
                                        echo '<input type="checkbox" name="food_trip" id="food_trip" class="checkbox">';
							            echo '<label for="food_trip">Matresa</label>';
                                    }
                                    echo '</p>';
                                }

                                echo '<legend>Klimat</legend>';
                                $query = "SELECT * FROM klimat WHERE id = 1";
                                $result = mysqli_query($connection, $query);
                                $fetchAll = mysqli_fetch_all($result,MYSQLI_ASSOC);

                                foreach($fetchAll[0] as $column => $data) {
                                    echo '<p>';
                                    if($column == 'solTemp' && $data == '1') {
                                        echo '<input type="checkbox" name="sun" id="sun" class="checkbox">';
                                        echo '<label for="sun">Sol och värme (ca 20 grader eller mer)</label>';
                                    }
                                    if($column == 'svalTemp' && $data == 1) {
                                        echo '<input type="checkbox" name="cool_weather" id="cool_weather" class="checkbox">';
                                        echo '<label for="cool_weather">Sval temperatur (ca 10-20 grader)</label>';
                                    }

                                    if($column == 'kalltTemp' && $data == 1) {
                                        echo '<input type="checkbox" name="snow" id="snow" class="checkbox">';
                                        echo '<label for="snow">Snö och kallt (kring fryspunkten eller kallare)</label>';
                                    }
                                    if($column == 'bergigt' && $data == 1) {
                                        echo '<input type="checkbox" name="mountain" id="mountain" class="checkbox">';
                                        echo '<label for="mountain">Bergigt</label>';
                                    }
                                    if($column == 'plant' && $data == 1) {
                                        echo '<input type="checkbox" name="flat" id="flat" class="checkbox">';
							            echo '<label for="flat">Plant</label>';
                                    }
                                    if($column == 'oken' && $data == 1) {
                                        echo '<input type="checkbox" name="desert" id="desert" class="checkbox">';
							            echo '<label for="desert">Öken</label>';
                                    }
                                    if($column == 'skog' && $data == 1) {
                                        echo '<input type="checkbox" name="forest" id="forest" class="checkbox">';
							            echo '<label for="forest">Skog</label>';
                                    }
                                    if($column == 'narhetTillVatten' && $data == 1) {
                                        echo '<input type="checkbox" name="water" id="water" class="checkbox">';
							            echo '<label for="water">Närhet till vatten</label>';
                                    }
                                    echo '</p>';
                                }



                                echo '<legend>Boende</legend>';

                                $query = "SELECT * FROM boende WHERE id = 1";
                                $result = mysqli_query($connection, $query);
                                $fetchAll = mysqli_fetch_all($result,MYSQLI_ASSOC);

                                foreach($fetchAll[0] as $column => $data) {
                                    echo '<p>';
                                    if($column == 'hotell' && $data == '1') {
                                        echo '<input type="checkbox" name="hotel" id="hotel" class="checkbox">';
                                        echo '<label for="hotel">Hotell</label>';
                                    }
                                    if($column == 'motell' && $data == '1') {
                                        echo '<input type="checkbox" name="motel" id="motel" class="checkbox">';
                                        echo '<label for="motel">Motell</label>';
                                    }
                                    if($column == 'vandrarhem' && $data == '1') {
                                        echo '<input type="checkbox" name="hostel" id="hostel" class="checkbox">';
                                        echo '<label for="hostel">Vandrarhem</label>';
                                    }
                                    if($column == 'camping' && $data == '1') {
                                        echo '<input type="checkbox" name="camping" id="camping" class="checkbox">';
                                        echo '<label for="camping">Camping</label>';
                                    }
                                    if($column == 'bedAndBreakfast' && $data == '1') {
                                        echo '<input type="checkbox" name="b_and_b" id="b_and_b" class="checkbox">';
                                        echo '<label for="b_and_b">Bed & breakfast</label>';
                                    }
                                    if($column == 'bungalow' && $data == '1') {
                                        echo '<input type="checkbox" name="bungalow" id="bungalow" class="checkbox">';
                                        echo '<label for="bungalow">Bungalow</label>';
                                    }
                                    echo '</p>';
                                }

                                echo '<legend>Transportmedel</legend>';

                                $query = "SELECT * FROM transportsmedel WHERE id = 1";
                                $result = mysqli_query($connection, $query);
                                $fetchAll = mysqli_fetch_all($result,MYSQLI_ASSOC);

                                foreach($fetchAll[0] as $column => $data) {
                                    echo '<p>';
                                    if($column == 'flygplan' && $data == '1') {
                                        echo '<input type="checkbox" name="airplane" id="airplane" class="checkbox">';
							            echo '<label for="airplane">Flygplan</label>';
                                    }
                                    if($column == 'tag' && $data == '1') {
                                        echo '<input type="checkbox" name="train" id="train" class="checkbox">';
							            echo '<label for="train">Tåg</label>';
                                    }
                                    if($column == 'buss' && $data == '1') {
                                        echo '<input type="checkbox" name="bus" id="bus" class="checkbox">';
							            echo '<label for="bus">Buss</label><br/>';
                                    }
                                    if($column == 'buss' && $data == '1') {
                                        echo '<input type="checkbox" name="other_transport" id="other_transport" class="checkbox">';
							            echo '<label for="other_transport">Annat/eget transportmedel</label>';
                                    }
                                    echo '</p>';
                                }



                                echo '<legend>Karta</legend>';

                                $query = "SELECT * FROM karta WHERE id = 1";
                                $result = mysqli_query($connection, $query);
                                $fetchAll = mysqli_fetch_all($result,MYSQLI_ASSOC);

                                foreach($fetchAll[0] as $column => $data) {
                                    echo '<p>';
                                    if($column == 'distans') {
                                        echo "distans: " . $data . "m";
                                    }
                                    echo '</p>';
                                }

                                echo '<legend>Budget</legend>';

                                $query = "SELECT * FROM budget WHERE id = 1";
                                $result = mysqli_query($connection, $query);
                                $fetchAll = mysqli_fetch_all($result,MYSQLI_ASSOC);

                                foreach($fetchAll[0] as $column => $data) {
                                    echo '<p>';
                                    if($column == 'kostnadTransport') {
                                        echo "Maxkostnad för transport: " . $data . " kr";
                                    }
                                    if($column == 'kostnadBoende') {
                                        echo "Maxkostnad för boende: " . $data . " kr";
                                    }
                                    if($column == 'levnadsKostnad') {
                                        echo "Max levnadskostnad per dag: " . $data . "kr";
                                    }
                                    echo '</p>';
                                }




                                mysqli_close($connection);
                                ?>
                            <!--<legend>Klimat</legend>
                                <p>
                                    <input type="checkbox" name="sun" id="sun" class="checkbox">
                                    <label for="sun">Sol och värme (ca 20 grader eller mer)</label>
                                </p>
                            <legend>Boende</legend>
                                <p>
                                    <input type="checkbox" name="hostel" id="hostel" class="checkbox">
                                    <label for="hostel">Vandrarhem</label>
                                </p>
                                <p>
                                    <input type="checkbox" name="camping" id="camping" class="checkbox">
                                    <label for="camping">Camping</label>
                                </p>
                                <p>
                                    <input type="checkbox" name="b_and_b" id="b_and_b" class="checkbox">
                                    <label for="b_and_b">Bed & breakfast</label>
                                </p>
                                <legend>Transportmedel</legend>
                                <p>
                                    <input type="checkbox" name="airplane" id="airplane" class="checkbox">
                                    <label for="airplane">Flygplan</label>
                                </p>
                                <p>
                                <input type="checkbox" name="train" id="train" class="checkbox">
                                <label for="train">Tåg</label>

                            </p>
                            <p>
                                <input type="checkbox" name="vandring" id="vandring" class="savedKritListCheckbox">
                                <label for="vandring">Vandring</label>
                            </p>
                            <p>
                                <input type="checkbox" name="kanot" id="kanot" class="savedKritListCheckbox">
                                <label for="kanot">Kanot</label>
                            </p>
                        <legend>Klimat</legend>
                            <p>
                                <input type="checkbox" name="sun" id="sun" class="checkbox">
                                <label for="sun">Sol och värme (ca 20 grader eller mer)</label>
                            </p>
                        <legend>Boende</legend>
                            <p>
                                <input type="checkbox" name="hostel" id="hostel" class="checkbox">
                                <label for="hostel">Vandrarhem</label>
                            </p>
                            <p>
                                <input type="checkbox" name="camping" id="camping" class="checkbox">
                                <label for="camping">Camping</label>
                            </p>
                            <p>
                                <input type="checkbox" name="b_and_b" id="b_and_b" class="checkbox">
                                <label for="b_and_b">Bed & breakfast</label>
                            </p>
                            <legend>Transportmedel</legend>
                            <p>
                                <input type="checkbox" name="airplane" id="airplane" class="checkbox">
                                <label for="airplane">Flygplan</label>
                            </p>
                            <p>
							<input type="checkbox" name="train" id="train" class="checkbox">
							<label for="train">Tåg</label>
						</p>-->
                    </form>
                    
                </div>
            </section>
            <footer>
            </footer>
        </div>
        </div>
     </body>
</html>