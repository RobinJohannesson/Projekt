<?php
session_start();

class User {

	private $userInfo = array();
	private	$dbname = "NewHorizons";
	private $connection;
	
	function __construct($userInfo) {
		$this->userInfo = $userInfo;
	}
	
	public function connectToDB() {
		$dbhost = "localhost";
		$dbuser = "root"; //Ange MySQL Namn här
		$dbpass = "hejhej123"; //Ange MySQL Lösenord här
		$dbname = "NewHorizons";
		$this->connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
		
		if ($this->connection->connect_error) {
			die("Connection failed: " . $this->connection->connect_error);
		} 		
	}
	
	public function logIn() {
					
		$query = $this->connection->prepare("SELECT * FROM users WHERE name = ? AND password = ?");
		$query->bind_param("ss", $this->userInfo[0], $this->userInfo[1]); 
		$query->execute();
		
		$result = $query->get_result();

		$_SESSION["Logged In"] = "Logged In";
		
		/*if (!$result) {
			die(mysqli_error($this->connection));
		} */
		
		if(mysqli_num_rows($result) == 1) {
			return true;
		} else {
			return false;
		}		
	}
		
}
