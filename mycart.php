<?php
include"config.php";
session_start();
if(isset($_SESSION["username"])){
    $sql="SELECT id FROM users WHERE username='{$_SESSION["username"]}'";
    $result=mysqli_query($con,$sql) or die("query failed");
    $row=mysqli_fetch_assoc($result);
    $id=$row['id'];
    $sql2="SELECT * FROM orderr WHERE uid='{$id}'";
    $result2=mysqli_query($con,$sql2) or die("query failed");
    if(mysqli_num_rows($result2)>0){
        while($row1=mysqli_fetch_assoc($result2)){
            $sql3="SELECT * FROM product WHERE pid='{$row1["pid"]}'";
            $result3=mysqli_query($con,$sql3) or die("query failed");
            $row3=mysqli_fetch_assoc($result3);
        //}}
//}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/mycart.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Mycart</title>
</head>
<body>
<table>
  <thead>
    <tr>
      <th>Product Id
      <th>Product Name
      <th>Price
      <th>Quantity
      <th>Type
      <th>Image
      <th>Action
  </thead>
  <tbody>
    <?php
    echo '<tr>
      <td>';echo $row3['pid'];echo'
      <td>';echo $row3['name'];echo'
      <td>';echo $row3['price'];echo'
      <td>';echo $row1['quantity'];echo'
      <td>';echo $row3['type'];echo'
      <td><img src="images/';echo $row3['img'];echo'" style="height:5rem;">';echo'
      <td><a href=delete.php?id=';echo $row1['oid'];echo'><button type="button" class="btn btn-danger">Delete</button></a></tr>';}}}else{header("Location:{$hostname}/tasteit-master/login.php");}?>
  </tbody>
</table>
</body>
</html>