<?php
session_start();
$username = $_SESSION['loginUser'];
// echo $_POST['title'];
// echo 'debug';
$connection = new mysqli("localhost", "root", "", "diary_pad");

if ($connection->connect_errno) {
    echo 0;
    exit;
}

$to_submit_article = $_POST['article'];
$to_submit_article = addslashes($to_submit_article);
$title = $_POST['title'];
$title = addslashes($title);
//echo $to_submit_article;
$query = "INSERT INTO article VALUES ('$username', NULL, '$to_submit_article', '$title')";

$connection->query($query);
// echo $to_submit_article;
echo 1;
