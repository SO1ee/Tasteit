<?php
include "config.php";
session_start();
$oid=$_GET['id'];
$sql="DELETE FROM orderr WHERE oid='{$oid}'";
$result=mysqli_query($con,$sql) or die("query failed");
if($result=mysqli_query($con,$sql)){
    header("Location:{$hostname}/tasteit-master/mycart.php");
}
?>