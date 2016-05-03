<?php

$dbhost = "localhost";
$dbuser = "root"; //Ange MySQL Namn här
$dbpass = "hejhej123"; //Ange MySQL Lösenord här
$dbname = "newhorizons";
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
$conn->set_charset("utf8");

$query = "INSERT INTO countries(stad, land, vandring, kanot, backpacking, safari, skidor, surfing, dykning, bergsklattring, spa,";
$query .= "naturupplevelser, solsemester, yoga, meditation, hotell, motell, vandrarhem, camping, bedAndBreakfast,";
$query .= "kostnadTransport, kostnadBoende, levnadsKostnad, distans, solTemp, svalTemp, kalltTemp, bergigt, plant, oken,";
$query .= "skog, narhetTillVatten, sightseeing, storstad, historia, religion, utbildningssyfte, matresa, kontinent, flygplan,";
$query .= "tag, buss, annat, img1, img2, img3, img4, img5, countryInfo, cityInfo, background, imgLink1, imgLink2, imgLink3, imgLink4,
imgText1, imgText2, imgText3, imgText4, hotellText, flygText, aktivitetText) VALUES(";

//$result = mysqli_query($conn, $query);

if(isset($_POST['city'])) {
    $query .= "'" . $_POST['city'] . "', ";
} else {
    $query .= ",";
}

if(isset($_POST['country'])) {
    $query .= "'" . $_POST['country'] . "', ";
} else {
    $query .= "'',";
}

if(isset($_POST['vandring']) && $_POST['vandring'] == "on") {
    $query .= "1, ";
    echo $_POST['vandring'];
} else {
    $query .= "0,";
}

if(isset($_POST['kanot']) && $_POST['kanot'] == "on") {
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

if(isset($_POST['travel_cost']) && !empty($_POST['travel_cost'])) {
    $query .= $_POST['travel_cost'] . ",";
}else {
    $query .= "0,";
}

if(isset($_POST['living_cost']) && !empty($_POST['living_cost'])) {
    $query .= $_POST['travel_cost'] . ",";
}else {
    $query .= "0,";
}

if(isset($_POST['cost_per_day']) && !empty($_POST['cost_per_day'])) {
    $query .= $_POST['travel_cost'] . ",";
}else {
    $query .= "0,";
}

if(isset($_POST['distance'])) {
    $query .= $_POST['travel_cost'] . ",";
}else {
    $query .= "0,";
}

if(isset($_POST['sun']) && $_POST['sun'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['cool_weather']) && $_POST['cool_weather'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['snow']) && $_POST['snow'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['mountain']) && $_POST['mountain'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['flat']) && $_POST['flat'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['desert']) && $_POST['desert'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['forest']) && $_POST['forest'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['water']) && $_POST['water'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['sightseeing']) && $_POST['sightseeing'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['town']) && $_POST['town'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['history']) && $_POST['history'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['religion']) && $_POST['religion'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['education']) && $_POST['education'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['food_trip']) && $_POST['food_trip'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}


if(isset($_POST['kontinent'])) {
    $query .= "'" . $_POST['kontinent'] . "', ";
} else {
    $query .= "'', ";
}


if(isset($_POST['airplane']) && $_POST['airplane'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['train']) && $_POST['train'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['bus']) && $_POST['bus'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_POST['other_transport']) && $_POST['other_transport'] == "on") {
    $query .= "1, ";
} else {
    $query .= "0, ";
}

if(isset($_FILES['pic1'])) {
    //uploadFile($_FILES['pic1']);
    if( uploadFile($_FILES['pic1'])) {
        $query .= "'". $_FILES['pic1']["name"] ."', ";
    } else {
        $query .= "'', ";
    }
}

if(isset($_FILES['pic2']) ) {
    //uploadFile($_FILES['pic1']);
    if( uploadFile($_FILES['pic2'])) {
        $query .= "'". $_FILES['pic2']["name"] ."', ";
    } else {
        $query .= "'', ";
    }
}

if(isset($_FILES['pic3'])) {
    //uploadFile($_FILES['pic1']);
    if( uploadFile($_FILES['pic3'])) {
        $query .= "'". $_FILES['pic3']["name"] ."', ";
    } else {
        $query .= "'', ";
    }
}

if(isset($_FILES['pic4'])) {
    //uploadFile($_FILES['pic1']);
    if( uploadFile($_FILES['pic4'])) {
        $query .= "'". $_FILES['pic4']["name"] ."', ";
    } else {
        $query .= "'', ";
    }
}


if(isset($_FILES['pic5'])) {
    //uploadFile($_FILES['pic1']);
    if( uploadFile($_FILES['pic5'])) {
        $query .= "'". $_FILES['pic5']["name"] ."', ";
    } else {
        $query .= "'', ";
    }
}

if(isset($_POST['country_desc'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['country_desc'] . "',";
} else {
    $query .= "'',";
}


if(isset($_POST['edit_city'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['edit_city'] . "',";
} else {
    $query .= "'',";
}

if(isset($_FILES['pic6'])) {
    //uploadFile($_FILES['pic1']);
    if( uploadFile($_FILES['pic6'])) {
        $query .= "'". $_FILES['pic6']["name"] ."', ";
    } else {
        $query .= "'', ";
    }
}

if(isset($_POST['activity_1'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['activity_1'] . "',";
} else {
    $query .= "'',";
}

if(isset($_POST['activity_2'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['activity_2'] . "',";
} else {
    $query .= "'',";
}


if(isset($_POST['activity_3'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['activity_3'] . "',";
} else {
    $query .= "'',";
}

if(isset($_POST['activity_4'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['activity_4'] . "',";
} else {
    $query .= "'',";
}

if(isset($_POST['imgText1'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['imgText1'] . "',";
} else {
    $query .= "'',";
}

if(isset($_POST['imgText2'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['imgText2'] . "',";
} else {
    $query .= "'',";
}

if(isset($_POST['imgText3'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['imgText2'] . "',";
} else {
    $query .= "'',";
}

if(isset($_POST['imgText4'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['imgText4'] . "',";
} else {
    $query .= "'',";
}

if(isset($_POST['lodging'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['lodging'] . "',";
} else {
    $query .= "'',";
}

if(isset($_POST['travel'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['travel'] . "',";
} else {
    $query .= "'',";
}

if(isset($_POST['activities'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['activities'] . "')";
} else {
    $query .= "'')";
}
/*
if(isset($_POST['edit_city'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['edit_city'] . "',";
} else {
    $query .= "'',";
}

if(isset($_FILES['pic6'])) {
    //uploadFile($_FILES['pic1']);
    if( uploadFile($_FILES['pic6'])) {
        $query .= "'". $_FILES['pic6']["name"] ."', ";
    } else {
        $query .= "'', ";
    }
} */
/*
if(isset($_POST['activity_1'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['activity_1'] . "',";
} else {
    $query .= "'',";
}

if(isset($_POST['activity_2'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['activity_2'] . "',";
} else {
    $query .= "'',";
}

if(isset($_POST['activity_3'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['activity_3'] . "',";
} else {
    $query .= "'',";
}

if(isset($_POST['activity_4'])) {
    //uploadFile($_FILES['pic1']);
    $query .= "'" . $_POST['activity_4'] . "')";
} else {
    $query .= "'')";
}
echo $query; */
function uploadFile($file) {
    $target_dir = "img/" . strtolower($_POST['country']) . '/' . $_POST['city'] ;
    $target_file = $target_dir . basename($file["name"]);
    $uploadOk = 1;
    $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
    if(isset($_POST["btn"])) {
        $check = getimagesize($file["tmp_name"]);
        if($check !== false) {
            //echo "File is an image - " . $check["mime"] . ".";
            $uploadOk = 1;
        } else {
            //echo "File is not an image.";
            $uploadOk = 0;
        }
    }
// Check if file already exists
    if (file_exists($target_file)) {
       // echo "Sorry, file already exists.";

        //$uploadOk = 0;
    }

// Allow certain file formats
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif" ) {
        //echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
        $uploadOk = 0;
    }
// Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        //echo "Sorry, your file was not uploaded.";
        return false;
// if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($file["tmp_name"], $target_file)) {
            //echo "The file ". basename($file["name"]). " has been uploaded.";
            return true;
        } else {
            //echo "Sorry, there was an error uploading your file.";
            return false;
        }
    }

}

$result = mysqli_query($conn, $query);


if(isset($_POST['country']) && isset($_POST['country_desc'])) {

    $query = "UPDATE countries SET countryInfo= '" . $_POST['country_desc'] . "' WHERE land= '" . $_POST['country'] ."'";
    $result = mysqli_query($conn, $query);
} else {
    $query = "";
}


mysqli_close();


header('Location: Index.html');
exit; 