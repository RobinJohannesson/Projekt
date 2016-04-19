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
                                echo '<p>';
                                while($row = mysqli_fetch_assoc($result)) {
                                    if($row['bergsklattring'] == '1') {
                                        echo "<input type='checkbox' name='bergsklattring' id='bergsklattring' class='savedKritListCheckbox'>";
                                        echo '<label for="bergsklattring">Bergsklättring</label>';
                                    }
                                }
                                echo '</p>';

                                echo '<legend>Klimat</legend>';
                                $query = "SELECT * FROM klimat WHERE id = 1";
                                $result = mysqli_query($connection, $query);
                                echo '<p>';
                                while($row = mysqli_fetch_assoc($result)) {
                                    if($row['solTemp'] == '1') {
                                        echo '<input type="checkbox" name="sun" id="sun" class="checkbox">';
                                        echo '<label for="sun">Sol och värme (ca 20 grader eller mer)</label>';
                                    }
                                }
                                echo '</p>';


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