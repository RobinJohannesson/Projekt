<?php
error_reporting(0);
session_start();
if(isset($_SESSION['user']) && $_SESSION['user'] == "Logged In") {
    echo '	<div class="dropdown">
            <a href="kontakt.html">Om oss</a>
        </div>';



}


?>