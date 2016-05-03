<?php
session_start();
$dbhost = "localhost";
$dbuser = "root"; //Ange MySQL Namn här
$dbpass = "hejhej123"; //Ange MySQL Lösenord här
$dbname = "NewHorizons";
$connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
$id = 1;

$query1 = "SELECT DISTINCT * FROM countries WHERE land = ''";
$query2 = 'SELECT (vandring + kanot + backpacking + safari + skidor + surfing + dykning + bergsklattring + spa + naturupplevelser + solsemester + yoga + meditation + hotell + motell + vandrarhem + camping + bedAndBreakfast + kostnadTransport + kostnadBoende + levnadsKostnad + solTemp + svalTemp+ kalltTemp+ bergigt+ plant+ oken+ skog+ narhetTillVatten+ sightseeing+ storstad+ historia+ religion+ utbildningssyfte+ matresa+ flygplan+ tag+ buss+ annat ) "summa", land, img1, id FROM countries GROUP BY(land)';


if(isset($_SESSION['id'])) {
    $id = $_SESSION['id'];
}

if(isset($_POST['kontinent']) && isset($_POST['länder'])) {
    $kontinent = $_POST['kontinent'];
    $lander = $_POST['länder'];
    $query  = "INSERT INTO onskning(id, kontinent, land) VALUES($id, '$kontinent', '$lander')";
    $result = mysqli_query($connection  , $query);

    $query1 .= " OR kontinent = " .$kontinent;
    $query1 .= " OR land = " . $lander;
}


if(isset($_POST['bergsklattring']) && $_POST['bergsklattring'] == "on") {
    $query  = "UPDATE aventyr SET bergsklattring = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR bergsklattring = 1";
}

if(isset($_POST['vandring']) && $_POST['vandring'] == "on") {
    $query  = "UPDATE aventyr SET vandring = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR vandring = 1";
}

if(isset($_POST['kanot']) && $_POST['kanot'] == "on") {
    $query  = "UPDATE aventyr SET kanot = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR kanot = 1";
}

if(isset($_POST['backpacking']) && $_POST['backpacking'] == "on") {
    $query  = "UPDATE aventyr SET backpacking = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR backpacking = 1";
}

if(isset($_POST['safari']) && $_POST['safari'] == "on") {
    $query  = "UPDATE aventyr SET safari = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR safari = 1";
}

if(isset($_POST['skidor']) && $_POST['skidor'] == "on") {
    $query  = "UPDATE aventyr SET skidor = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR skidor = 1";

}

if(isset($_POST['surfing']) && $_POST['surfing'] == "on") {
    $query  = "UPDATE aventyr SET surfing = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR surfing = 1";

}

if(isset($_POST['dykning']) && $_POST['dykning'] == "on") {
    $query  = "UPDATE aventyr SET dykning = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR dykning = 1" ;
}


if(isset($_POST['spa']) && $_POST['spa'] == "on") {
    $query  = "UPDATE avslappning SET spa = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR spa = 1" ;
}

if(isset($_POST['nature']) && $_POST['nature'] == "on") {
    $query  = "UPDATE avslappning SET naturupplevelser = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR naturupplevelser = 1";

}

if(isset($_POST['sun_vacation']) && $_POST['sun_vacation'] == "on") {
    $query  = "UPDATE avslappning SET solsemester = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR solsemester = 1";

}

if(isset($_POST['yoga']) && $_POST['yoga'] == "on") {
    $query  = "UPDATE avslappning SET yoga = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR yoga = 1" ;
}

if(isset($_POST['meditation']) && $_POST['meditation'] == "on") {
    $query  = "UPDATE avslappning SET meditation = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR meditation = 1";
}

if(isset($_POST['sightseeing']) && $_POST['sightseeing'] == "on") {
    $query  = "UPDATE kultur SET sightseeing = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR sightseeing = 1" ;

}

if(isset($_POST['storstad']) && $_POST['storstad'] == "on") {
    $query  = "UPDATE kultur SET storstad = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR storstad = 1";

}

if(isset($_POST['history']) && $_POST['history'] == "on") {
    $query  = "UPDATE kultur SET historia = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR historia = 1";

}

if(isset($_POST['religion']) && $_POST['religion'] == "on") {
    $query  = "UPDATE kultur SET religion = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR religion = 1";
}

if(isset($_POST['education']) && $_POST['education'] == "on") {
    $query  = "UPDATE kultur SET utbildningssyfte = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR utbildningssyfte = 1";

}

if(isset($_POST['food_trip']) && $_POST['food_trip'] == "on") {
    $query  = "UPDATE kultur SET matresa = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR matresa = 1";

}


if(isset($_POST['sun']) && $_POST['sun'] == "on") {
    $query  = "UPDATE klimat SET solTemp = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR solTemp = 1" ;

}

if(isset($_POST['cool_weather']) && $_POST['cool_weather'] == "on") {
    $query  = "UPDATE klimat SET svalTemp = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR svalTemp = 1";

}

if(isset($_POST['snow']) && $_POST['snow'] == "on") {
    $query  = "UPDATE klimat SET kalltTemp = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR kalltTemp = 1";

}

if(isset($_POST['mountain']) && $_POST['mountain'] == "on") {
    $query  = "UPDATE klimat SET bergigt = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR bergigt = 1";

}

if(isset($_POST['flat']) && $_POST['flat'] == "on") {
    $query  = "UPDATE klimat SET plant = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR plant = 1";

}



if(isset($_POST['desert']) && $_POST['desert'] == "on") {
    $query  = "UPDATE klimat SET oken = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR oken = 1";

}

if(isset($_POST['forest']) && $_POST['forest'] == "on") {
    $query  = "UPDATE klimat SET skog = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR skog = 1";

}

if(isset($_POST['water']) && $_POST['water'] == "on") {
    $query  = "UPDATE klimat SET narhetTillVatten = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR narhetTillVatten = 1";

}


if(isset($_POST['distans'])) {
    $distans = $_POST['distans'];
    $query  = "UPDATE klimat SET distans = $distans WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR distans = 1";

}


if(isset($_POST['travel_cost'])) {
    $travelCost = $_POST['travel_cost'];
    $query  = "UPDATE budget SET kostnadTransport = $travelCost WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR kostnadTransport = 1" ;

}

if(isset($_POST['living_cost'])) {
    $livingCost = $_POST['living_cost'];
    $query  = "UPDATE budget SET kostnadBoende = $travelCost WHERE id = $id";
    $result = mysqli_query($connection , $query);
    $query1 .= " OR kostnadBoende = 1";

}

if(isset($_POST['cost_per_day'])) {
    $costPerDay = $_POST['cost_per_day'];
    $query  = "UPDATE budget SET levnadsKostnad = $costPerDay WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR levnadsKostnad = 1";

}

if(isset($_POST['hotel']) && $_POST['hotel'] == "on") {
    $query  = "UPDATE boende SET hotell = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR hotell = 1" ;

}

if(isset($_POST['motel']) && $_POST['motel'] == "on") {
    $query  = "UPDATE boende SET motell = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR motell = 1";

}

if(isset($_POST['hostel']) && $_POST['hostel'] == "on") {
    $query  = "UPDATE boende SET vandrarhem = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR vandrarhem = 1" ;

}

if(isset($_POST['camping']) && $_POST['camping'] == "on") {
    $query  = "UPDATE boende SET camping = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR camping = 1" ;

}

if(isset($_POST['b_and_b']) && $_POST['b_and_b'] == "on") {
    $query  = "UPDATE boende SET bedAndBreakfast = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR bedAndBreakfast = 1";

}

if(isset($_POST['bungalow']) && $_POST['bungalow'] == "on") {
    $query  = "UPDATE boende SET bungalow = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR bungalow = 1";

}

if(isset($_POST['airplane']) && $_POST['airplane'] == "on") {
    $query  = "UPDATE transportsmedel SET flygplan = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR flygplan = 1" ;

}

if(isset($_POST['train']) && $_POST['train'] == "on") {
    $query  = "UPDATE transportsmedel SET tag = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR tag = 1" ;

}

if(isset($_POST['bus']) && $_POST['bus'] == "on") {
    $query  = "UPDATE transportsmedel SET buss = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR buss = 1" ;

}

if(isset($_POST['other_transport']) && $_POST['other_transport'] == "on") {
    $query  = "UPDATE transportsmedel SET annat = 1 WHERE id = $id";
    $result = mysqli_query($connection  , $query);
    $query1 .= " OR annat = 1" ;

}


//header('Location: profilSparKrit.php');


//sELECT (vandring + kanot) AS "summa" FROM countries