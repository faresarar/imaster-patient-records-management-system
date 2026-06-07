<?php
	require('db.php');
	$conn->query("DELETE FROM `admin` WHERE `admin_id` = '$_GET[id]'") or die(mysqli_error());
	echo("<script> location.replace('admin.php');</script>");
?>