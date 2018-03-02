<?php 
		
		//database info
	$db_host = "localhost";
	$db_name = "fsbhmentry_db";
	$db_username = "root";
	$db_password = "";

	//PHP Data Object PDO

	try{
		$conn = new PDO("mysql:dbname=$db_name;host=$db_host", $db_username, $db_password)
		$conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO:: FETCH_ASSOC);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	}catch(PDOException $e){
		echo "there seems to be a problem.";
		die();
	}


 ?>