<?php
	$dbcon = new msqli('localhost', 'root', '1234', 'mrrobot');
	if (!$dbcon){
		echo ('Cannot connect to db');
	}
?>
