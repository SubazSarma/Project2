<?php include("config.php");
$q = $_GET['q'];
if($q == 'updatecart'){
    $id = $_GET['cart_id'];
    echo "$id";
    $qty = $_POST['qty'];
    echo "$qty";

$query=mysql_query("UPDATE orders SET quantity='$qty' WHERE orderId='$id'")
or die(mysql_error());
header("Location: cart.php");
    }
    ?>