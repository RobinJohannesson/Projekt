<?php
session_start();
if(isset($_SESSION['user']) && $_SESSION['user'] == "Logged In") {
    header('Location: profilStart.php');
} else {

}

?>
<!DOCTYPE HTML>
<html>

<head>
    <meta charset="utf-8">
    <link type="text/css" rel="stylesheet" href="style.css">
    <link href='https://fonts.googleapis.com/css?family=Cinzel' rel='stylesheet' type='text/css'>
    <title>Horizon</title>
</head>

<body>
    <header>
        <h1>
                Horizon
            </h1>
        <h2>Du väljer kriterier, Vi tar fram resan</h2>
    </header>
    <div id="container">
       <form action="" method="post" id="login_box">
            Username:
            <input type="text" name="user" placeholder="Username">
            Password:
            <input type="password" name="password" placeholder="Password">
            <input type="submit" value="Login" name="btn">
           <?php
                if(isset($_POST['btn'])) {
                    include 'action.php';
                }
           ?>
        </form>
        <a href="register.html">
            <div id="register">
                <h2>Registrera dig</h2>
            </div>
        </a>
        <footer>
        </footer>
    </div>
</body>

</html>