<?php
session_start();
$dbhost = "localhost";
$dbuser = "root"; //Ange MySQL Namn här
$dbpass = "hejhej123"; //Ange MySQL Lösenord här
$dbname = "NewHorizons";
$connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);



if(isset($_POST['yoga'])) {

    echo $_POST['yoga'];
}


if(isset($_POST['kontinent']) && isset($_POST['länder'])) {
    $kontinent = $_POST['kontinent'];
    $lander = $_POST['länder'];
    $id = $_SESSION['id'];
    $query  = "INSERT INTO onskning(id, kontinent, land) VALUES($id, '$kontinent', '$lander')";
    $result = mysqli_query($connection  , $this->query);
}


if(isset($_POST['bergsklattring']) && $_POST['bergsklattring'] == "on") {
    $query  = "INSERT INTO aventyr(id, bergsklattring) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['vandring']) && $_POST['vandring'] == "on") {
    $query  = "INSERT INTO aventyr(id, vandring) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['kanot']) && $_POST['kanot'] == "on") {
    $query  = "INSERT INTO aventyr(id, vandring) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['backpacking']) && $_POST['backpacking'] == "on") {
    $query  = "INSERT INTO aventyr(id, vandring) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['safari']) && $_POST['safari'] == "on") {
    $safari = $_POST['safari'];
    $query  = "INSERT INTO aventyr(id, vandring) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['skidor']) && $_POST['skidor'] == "on") {
    $query  = "INSERT INTO aventyr(id, skidor) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['surfing']) && $_POST['surfing'] == "on") {
    $query  = "INSERT INTO aventyr(id, surfing) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['dykning']) && $_POST['dykning'] == "on") {
    $query  = "INSERT INTO aventyr(id, dykning) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}


if(isset($_POST['spa']) && $_POST['spa'] == "on") {
    $query  = "INSERT INTO avslappning(id, spa) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['nature']) && $_POST['nature'] == "on") {
    $query  = "INSERT INTO avslappning(id, naturupplevelser) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['yoga']) && $_POST['yoga'] == "on") {
    $query  = "INSERT INTO avslappning(id, yoga) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['meditation']) && $_POST['meditation'] == "on") {
    $query  = "INSERT INTO avslappning(id, meditation) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['sightseeing']) && $_POST['sightseeing'] == "on") {
    $query  = "INSERT INTO avslappning(id, sightseeing) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['storstad']) && $_POST['storstad'] == "on") {
    $query  = "INSERT INTO avslappning(id, storstad) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['history']) && $_POST['history'] == "on") {
    $query  = "INSERT INTO avslappning(id, historia) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['religion']) && $_POST['religion'] == "on") {
    $query  = "INSERT INTO avslappning(id, religion) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['education']) && $_POST['education'] == "on") {
    $query  = "INSERT INTO avslappning(id, utbildningssyfte) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['food_trip']) && $_POST['food_trip'] == "on") {
    $query  = "INSERT INTO avslappning(id, matresa) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['food_trip']) && $_POST['food_trip'] == "on") {
    $query  = "INSERT INTO avslappning(id, matresa) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['sun']) && $_POST['sun'] == "on") {
    $query  = "INSERT INTO klimat(id, solTemp) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['cool_weather']) && $_POST['cool_weather'] == "on") {
    $query  = "INSERT INTO klimat(id, svalTemp) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['snow']) && $_POST['snow'] == "on") {
    $query  = "INSERT INTO klimat(id, kalltTemp) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['mountain']) && $_POST['mountain'] == "on") {
    $query  = "INSERT INTO klimat(id, bergigt) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['flat']) && $_POST['flat'] == "on") {
    $query  = "INSERT INTO klimat(id, plant) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['desert']) && $_POST['desert'] == "on") {
    $query  = "INSERT INTO klimat(id, oken) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['forest']) && $_POST['forest'] == "on") {
    $query  = "INSERT INTO klimat(id, skog) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['water']) && $_POST['water'] == "on") {
    $query  = "INSERT INTO klimat(id, narhetTillVatten) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}


if(isset($_POST['distans'])) {
    $distans = $_POST['distans'];
    $query  = "INSERT INTO karta(id, distans) VALUES($id,  $distans)";
    $result = mysqli_query($connection  , $this->query);
}


if(isset($_POST['travel_cost'])) {
    $travelCost = $_POST['travel_cost'];
    $query  = "INSERT INTO budget(id, skog) VALUES($id,  $travelCost)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['living_cost'])) {
    $livingCost = $_POST['living_cost'];
    $query  = "INSERT INTO budget(id, kostnadBoende) VALUES($id, $livingCost)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['cost_per_day'])) {
    $costPerDay = $_POST['cost_per_day'];
    $query  = "INSERT INTO budget(id, kostnadBoende) VALUES($id, $costPerDay)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['hotel']) && $_POST['hotel'] == "on") {
    $query  = "INSERT INTO boende(id, hotell) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['motel']) && $_POST['motel'] == "on") {
    $query  = "INSERT INTO boende(id, motell) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['hostel']) && $_POST['hostel'] == "on") {
    $query  = "INSERT INTO boende(id, vandrarhem) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['camping']) && $_POST['camping'] == "on") {
    $query  = "INSERT INTO boende(id, camping) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['b_and_b']) && $_POST['b_and_b'] == "on") {
    $query  = "INSERT INTO boende(id, bedAndBreakfast) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['bungalow']) && $_POST['bungalow'] == "on") {
    $query  = "INSERT INTO boende(id, bungalow) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['airplane']) && $_POST['airplane'] == "on") {
    $query  = "INSERT INTO transportsmedel(id, flygplan) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['train']) && $_POST['train'] == "on") {
    $query  = "INSERT INTO transportsmedel(id, tag) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['bus']) && $_POST['bus'] == "on") {
    $query  = "INSERT INTO transportsmedel(id, buss) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}

if(isset($_POST['other_transport']) && $_POST['other_transport'] == "on") {
    $query  = "INSERT INTO transportsmedel(id, annat) VALUES($id, 1)";
    $result = mysqli_query($connection  , $this->query);
}


/*$this->query  = "SELECT * FROM vacation";
$this->result = mysqli_query($connection  , $this->query);
result($this->result);

$result = mysql_query('SELECT * WHERE 1=1');
if (!$result) {
    die('Invalid query: ' . mysql_error());
} */

mysqli_close($con);

/*private $userInfo = array();
private	$dbname = "NewHorizons";
private $connection;

function __construct() {

}

public function connectToDB() {
    $dbhost = "localhost";
    $dbuser = "root"; //Ange MySQL Namn här
    $dbpass = "hejhej123"; //Ange MySQL Lösenord här
    $dbname = "NewHorizons";
    $connection  ection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

    if ($connection  ection->connect_error) {
        die("Connection failed: " . $connection  ection->connect_error);
    }
}

if(isset($_POST['bungalow'])) {
    echo $_POST['bungalow'];
}

*/