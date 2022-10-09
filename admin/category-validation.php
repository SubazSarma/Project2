<?php

	$name = mysql_real_escape_string(htmlspecialchars($_POST['name']));
	$description=$_POST['description'];
	$con = mysql_connect ("localhost","root");
	// Select Database
	mysql_select_db("bk-store", $con);
	// Specify the query to Insert Record
	$sql = "insert into categories(name,description) values('".$name."','".$description."')";
	// execute query
	mysql_query ($sql,$con);
	// Close The Connection
	mysql_close ($con);
	
	echo "<script type='text/javascript'>alert('You have added a new category successfully!!');
				window.location='categories-list.php';</script>";


?>