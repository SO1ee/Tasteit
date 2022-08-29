<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <title>Login</title>
</head>
<body>
    <div class="materialContainer">


        <div class="box">
     
           <div class="title">LOGIN</div>
               <form action="<?php $_SERVER['PHP_SELF'];?>" method="POST">
                        <div class="input">
                           <!--<label for="name">Username</label>-->
                           <input type="text" name="name" id="name" placeholder="Username">
                           <span class="spin"></span>
                        </div>

                        <div class="input">
                           <!--<label for="pass">Password</label>-->
                           <input type="password" name="pass" id="pass"placeholder="Password">
                           <span class="spin"></span>
                        </div>
     
                        <div class="button login">
                           <button name="login"><span>GO</span> <i class="fa fa-check"></i></button>
                        </div>
     
                        <a href="signup.php" class="pass-forgot">Sign Up</a>
               </form>
               <?php
                  include"config.php";
                 if(isset($_POST['login'])){
                  $username=mysqli_real_escape_string($con,$_POST['name']);
                  $pass=mysqli_real_escape_string($con,$_POST['pass']);
                  $sql="SELECT * FROM users WHERE username='{$username}'AND password='{$pass}'";
                  $result=mysqli_query($con,$sql) or die("query failed");
                  if(mysqli_num_rows($result)>0){
                        while($row=mysqli_fetch_assoc($result)){
                           session_start();
                           $_SESSION["username"]=$row['username'];
                           $_SESSION["user_id"]=$row['id'];
                           header("Location:{$hostname}/tasteit-master/index.php");
                        }
                  }else{
                     echo"Wrong input";
                  }
                 }
               ?>
     
            </div>
     
        </div>
     
     </div>
</body>
</html>