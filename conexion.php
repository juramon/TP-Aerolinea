<?php
	$link=mysqli_connect("localhost","root","", "aerolineas");
	if(mysqli_connect_errno()!=0)
	{
	echo mysqli_connect_error();
	die();
	}

	
?>