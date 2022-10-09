<?php include("config.php");
$p = $_GET['p'];
if($p == 'updateprice'){
    $id = $_GET['orderId'];
    echo "$id";
    $qty = $_POST['prc'];
    echo "$qty";

$query=mysql_query("UPDATE paidorders SET changeprice='$qty' WHERE id='$id'")
or die(mysql_error());
header("Location: order-list.php");
    }
    ?>