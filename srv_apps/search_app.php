<?php 
$db = new mysqli('localhost', 'root', '1234', 'mrrobot');
if (!$db){
	echo 'Cannot connect to db';
};

$user_search = $_GET["user_search"];
$user_search = $user_search . '%';

$query = "SELECT * FROM ps4_games WHERE name_db LIKE ?";
$stmt = $db->prepare($query);
$stmt->bind_param('s', $user_search);
$stmt->execute();
$stmt->store_result();

$reply="";

$stmt->bind_result($id, $name_db, $name, $release_date, $genre, $cover_img, $price);
while ($stmt->fetch()){
	$reply =  $reply . '<article id="game_box">' . '<img id="cover_img" src=' . $cover_img . '> <section id="game_info"> <p>' . $name . '</p><p>' . '<p>' . $price . '€</p>'. $release_date . '</p> <p>' . $genre . '</p>' . '</section></article>';
}
echo $reply;
?>
