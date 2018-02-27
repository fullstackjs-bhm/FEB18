<?php 
	
	$db = 'fsbhmprod_db'; //DB NAME
	$host = 'localhost';//DB HOST OR URL
	$username = 'root';//DB USERNAME
	$password = '';//DB PASSWORD

//Create DB connnection using PDO Object

try{
	$conn = new PDO("mysql:dbname=$db;host=$host", $username, $password);
	$conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

}catch(PDOException $e){
	echo "There seems to be an issue with the database.";
	die();
}


?>