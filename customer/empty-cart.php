<?php
include('config.php');
include 'functions.php';
$user=$_SESSION['user']['username'];
$result = mysql_query("DELETE FROM orders WHERE username='$user'")
or die(mysql_error());
while($result) {
header("Location: cart.php");
}
?>
