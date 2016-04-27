<?php

$dbhost = "localhost";
$dbuser = "root"; //Ange MySQL Namn här
$dbpass = "hejhej123"; //Ange MySQL Lösenord här
$dbname = "newhorizons";
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
$conn->set_charset("utf8");

$query = "INSERT INTO(stad, land, vandring, kanot, backpacking, safari, skidor, surfing, dykning, bergsklattring, spa,";
$query .= "naturupplevelser, solsemester, yoga, meditation, hotell, motell, vandrarhem, camping, bedAndBreakfast,";
$query .= "kostnadTransport, kostnadBoende, levnadsKostnad, distans, solTemp, svalTemp, kalltTemp, bergigt, plant, oken,";
$query .= "skog, narhetTillVatten, sightseeing, storstad, historia, religion, utbildningssyfte, matresa, kontinent, flygplan,";
$query .= "tag, buss, annat, img1, img2, img3, img4) VALUES(";

//$result = mysqli_query($conn, $query);

if(isset($_POST['city'])) {
    $query .= "'" . $_POST['city'] . "', ";
} else {
    $query .= ",";
}

if(isset($_POST['country'])) {
    $query .= "'" . $_POST['country'] . "', ";
} else {
    $query .= ",";
}

if(isset($_POST['vandring']) && $_POST['vandring'] == "on") {
    $query .= "1, ";
    echo $_POST['vandring'];
} else {
    $query .= "0,";
}

if(isset($_POST['kanot']) && $_POST['kanot']) == "on" {
    $query .= "1,";
} else {
    $query .= "0,";
}

if(isset($_POST['backpacking']) && $_POST['backpacking'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0,";
}

if(isset($_POST['safari']) && $_POST['safari'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['skidor']) && $_POST['skidor'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}


if(isset($_POST['surfing']) && $_POST['surfing'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}


if(isset($_POST['dykning']) && $_POST['dykning'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}

if(isset($_POST['bergsklattring']) && $_POST['bergsklattring'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}

if(isset($_POST['spa']) && $_POST['spa'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}


if(isset($_POST['nature']) && $_POST['naturupplevelser'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}

if(isset($_POST['solsemester']) && $_POST['solsemester'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}

if(isset($_POST['yoga']) && $_POST['yoga'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}


if(isset($_POST['meditation']) && $_POST['meditation'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}

if(isset($_POST['hotel']) && $_POST['hotel'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}

if(isset($_POST['motel']) && $_POST['motel'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}

if(isset($_POST['hostel']) && $_POST['hostel'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}

if(isset($_POST['camping']) && $_POST['camping'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}

if(isset($_POST['b_and_b']) && $_POST['b_and_b'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}


if(isset($_POST['b_and_b']) && $_POST['b_and_b'] == "on") {
    $query .= "1, ";
}else {
    $query .= "0,";
}

if(isset($_POST['travel_cost'])) {
    $query .= $_POST['travel_cost'] . ",";
}else {
    $query .= "0,";
}

/*if (isset($_FILES['file'])) {
    $myFile = $_FILES['file'];
    $fileCount = count($myFile["name"]);

    for ($i = 0; $i < $fileCount; $i++) {
        ?>
        <p>File #<?= $i+1 ?>:</p>
        <p>
            Name: <?= $myFile["name"][$i] ?><br>
            Temporary file: <?= $myFile["tmp_name"][$i] ?><br>
            Type: <?= $myFile["type"][$i] ?><br>
            Size: <?= $myFile["size"][$i] ?><br>
            Error: <?= $myFile["error"][$i] ?><br>
        </p>
        <?php
    }
}
*/

/*
$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["file"]["name"][0]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["file"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }
}
*/

$target_dir = "img/";
$target_file = $target_dir . basename($_FILES["file"]["name"][0]);
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["file"]["tmp_name"][0]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }
}
// Check if file already exists
if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}
// Check file size
if ($_FILES["file"]["size"][0] > 500000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}
// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    && $imageFileType != "gif" ) {
    echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["file"]["tmp_name"][0], $target_file)) {
        echo "The file ". basename( $_FILES["file"]["name"][0]). " has been uploaded.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}