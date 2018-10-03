<?php
$user_name = $_GET["user_name"];

$mysqli = new mysqli('localhost','mrrobot','1234','mrrobot');

$sql = "SELECT user_name FROM users WHERE user_name = '$user_name'";
$query = $mysqli->query($sql);
$num_results = $query->num_rows;
if($num_results > 0){
	echo "This user name is already used";
}elseif($num_results == 0){
	echo "The user name is aviable";
}
?>
