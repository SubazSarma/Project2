<?php
include('config.php');
if (isset($_GET['orderId']) && is_numeric($_GET['orderId']))
{
$orderId = $_GET['orderId'];
$result = mysql_query("UPDATE paidorders SET status='Rejected' WHERE id='$orderId'")
or die(mysql_error());
header("Location: order-list.php");
}
else
{
header("Location: order-list.php");
}
?>