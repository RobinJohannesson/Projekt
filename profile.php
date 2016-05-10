<?php
error_reporting(0);
session_start();
if(isset($_SESSION['user']) && $_SESSION['user'] == "Logged In") {
    echo '	<div class="dropdown">
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
			<a href="index.php?status=logout">Logga ut</a>
		</div>
	</div>';



}


?>