<?php 
	session_start();
?>
<!DOCTYPE html>
<html>
<body>
	<form method="POST">
		<label for="email">Email: </label>
		<input name="email" type="email" />
		
		<label for="password">Password: </label>
		<input name="password" type="password" />
		
		<input type="submit" value="Logga in" name="btn" />
	</form>
	
	<?php 
		/*if(isset($_POST['btn']) && isset($_POST['email']) && isset($_POST['password'])) {
			
			include("user.php");
			
			$email = $_POST['email'];
			$password = $_POST['password'];
			
			$array = array($email, $password);
			
			$user = new User($array);
			
			$user->connectToDB();
			
			if($user->logIn()) {
				echo "true";
			}
		}
		
		if(isset($_SESSION['Logged In']) && $_SESSION['Logged In'] == "Logged In") {
			echo 'logged in';
		} */
	
		include('validation.php');
		
		$values = array();
		
		if(isset($_POST['btn'])) {
			if(isset($_POST['email'])) {
				$email = $_POST['email'];
				$values['email'] = $email;
			}
			
			if(isset($_POST['password'])) {
				$password = $_POST['password'];
				$values['password'] = $password;
			}
			
			$inputField = new Input($values);
			
			$inputField->validate();
			$inputField->outputError();
		}

	?>
</body>
</html>
