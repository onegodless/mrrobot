<?php

$db = new mysqli('localhost', 'root', '1234', 'mrrobot');
if (!$db){
	echo 'Cannot connect to db';
};

$user_search = $_REQUEST["user_search"];
$query = "SELECT * FROM ps4_games WHERE name = ?";
$stmt = $db->prepare($query);
$stmt->bind_param('s', $user_search);
$stmt->execute();
$stmt->store_result();

$reply="";

$stmt->bind_result($id, $name, $release_date, $genre, $cover_img);
while ($stmt->fetch()){
	$reply =  "$name";
};
echo $reply;
?>
