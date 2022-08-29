<?php
include "config.php";
session_start();
if(isset($_SESSION["username"])){
    $sql1="SELECT id FROM users WHERE username='{$_SESSION["username"]}'";
    $result1=mysqli_query($con,$sql1) or die("query failed");
    $row1=mysqli_fetch_assoc($result1);
    $uid=$row1['id'];

}
$id=$_GET['id'];
$sql="SELECT * FROM product WHERE pid='{$id}'";
$result=mysqli_query($con,$sql) or die("query failed");
$row=mysqli_fetch_assoc($result);
$pid=$row['pid'];
$quantity=1;
$ammount=$row['price'];
$sql2="INSERT INTO orderr
VALUES ('','$id', '$uid', '$quantity','$ammount')";
if($result2=mysqli_query($con,$sql2) or die("query failedd")){
    header("Location:{$hostname}/tasteit-master/mycart.php");
}
?>