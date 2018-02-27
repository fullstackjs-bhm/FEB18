<?php
//Database Info
$db_host = "localhost";       //db host
$db_name = "fsbhmentry_db";   // db name
$db_username = "root";       //db username
$db_password = "";          // db password
//PDO PHP Data Object
//Creates Object to allow for DB connection

try{
	$conn = new PDO("mysql:dbname=$db_name;host=$db_host", $db_username, $db_password);
	$conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOExecption $e){
	echo "There seems to be an issue with the database.";
	die();
}
//Query to database
$query = "insert into `questions` (question, options, answer) values ('To be or not to be?', 'yes, no, maybe', 'a')";

$stmnt = $conn->prepare($query);
$stmnt->execute();
$stmnt->closeCursor();



?>