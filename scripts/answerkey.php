<?php
require_once('database.php');

$query = 'SELECT id, answer FROM questions';

$stmnt = $conn->prepare($query);
$stmnt->execute();
$results = $stmnt->fetchAll();

echo json_encode($results);
?>