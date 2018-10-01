<?php
$x = 5;

function test(){
	global $x;
	echo $x;

}

test();
?>

