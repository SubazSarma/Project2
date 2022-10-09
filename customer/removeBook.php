<?php
include('config.php');
if (isset($_GET['orderId']) && is_numeric($_GET['orderId']))
{
$orderId = $_GET['orderId'];
$result = mysql_query("DELETE FROM orders WHERE orderId=$orderId")
or die(mysql_error());
header("Location: cart.php");
}
else
{
header("Location: cart.php");
}
?>
