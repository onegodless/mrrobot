<?php 
$mysqli = new mysqli('localhost', 'root', '1234', 'mrrobot');
if (!$mysqli){
	echo 'Cannot connect to db';
};

$user_search = $_GET["user_search"];
$user_search = $user_search . '%';

$sql = "SELECT name, cover_img_link FROM ps4_games WHERE name_db LIKE '$user_search'" ;
$query = $mysqli->query($sql);

while ( $row = $query->fetch_assoc() ){
	$reply[] = $row;
}
$query->free_result();

echo json_encode($reply);
?>
