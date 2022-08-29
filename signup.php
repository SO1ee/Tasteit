<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/signup.css">
    <title>Sign Up</title>
</head>
<body>
        <div class="materialContainer">


            <div class="box">

                    <div class="title">Sign Up</div>
                        <form action="<?php $_SERVER['PHP_SELF']?>" method="POST">
                            <div class="input">
                                <label for="name"></label>
                                <input type="text" name="name" id="name" placeholder="Username"required>
                                <span class="spin"></span>
                            </div>

                            <div class="input">
                                <label for="email"></label>
                                <input type="email" name="email" id="email"placeholder="E-mail"required>
                                <span class="spin"></span>
                            </div>

                            <div class="input">
                                <label for="mobile"></label>
                                <input type="tel" name="mobile" id="mobile"placeholder="Mobile"required>
                                <span class="spin"></span>
                            </div>

                            <div class="input">
                                <label for="address"></label>
                                <input type="text" name="address" id="address"placeholder="Address"required>
                                <span class="spin"></span>
                            </div>

                            <div class="input">
                                <label for="pass"></label>
                                <input type="password" name="pass" id="pass"placeholder="Password"required>
                                <span class="spin"></span>
                            </div>

                            <div class="button login">
                                <button name="signup"><span>GO</span> <i class="fa fa-check"></i></button>
                            </div>
                        </form>
                        <?php
                            include"config.php";
                                if(isset($_POST['signup'])){
                                    $username=mysqli_real_escape_string($con,$_POST['name']);
                                    $email=mysqli_real_escape_string($con,$_POST['email']);
                                    $mobile=mysqli_real_escape_string($con,$_POST['mobile']);
                                    $address=mysqli_real_escape_string($con,$_POST['address']);
                                    $password=mysqli_real_escape_string($con,$_POST['pass']);
                                    $sql="INSERT INTO users
                                    VALUES ('','$username','$email','$mobile','$address','$password')";
                                    if($result=mysqli_query($con,$sql)){
                                        header("Location:{$hostname}/tasteit-master/login.php");
                                    }
                                }
                        ?>
                    </div>
                </div>
        </div>
</body>
</html>