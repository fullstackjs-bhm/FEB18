<?php
require_once('database.php');

$query = 'SELECT id, questions, optionA, optionB, optionC, optionD FROM questions';

$stmnt = $conn->prepare($query);
$stmnt->execute();
$results = $stmnt->fetchAll();

echo json_encode($results);
?>

