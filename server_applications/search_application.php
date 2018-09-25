<?php 
$db = new mysqli('localhost', 'root', '1234', 'mrrobot');
if (!$db){
	echo 'Cannot connect to db';
};
$like = '%';
$user_search = $_REQUEST["user_search"];
$user_search = $user_search . '%';
$query = "SELECT * FROM ps4_games WHERE name LIKE ?";
$stmt = $db->prepare($query);
$stmt->bind_param('s', $user_search);
$stmt->execute();
$stmt->store_result();

$reply="";

$stmt->bind_result($id, $name, $release_date, $genre, $cover_img);
while ($stmt->fetch()){
	$reply =  $reply . "<p>$name</p><p>$release_date</p><p>$genre</p><img src='$cover_img'>";
}
echo $reply;
?>
