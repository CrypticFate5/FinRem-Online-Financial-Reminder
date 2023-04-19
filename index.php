<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login- FinRem</title>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="icon" href="images/logo1.png">
    <link rel="stylesheet" href="styles/login.css">
    <link rel="stylesheet" href="partials/navbar.css">
</head>
<style>
    <?php include "styles/login.css" ?>
</style>

<?php
include "partials/_dbconnect.php";
$login = true;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $userid = $_POST["username"];
    $password = $_POST["password"];

    $sql = "select password from users where userid='$userid'";
    $result = mysqli_query($conn, $sql);
    // echo var_dump($result);
    if( mysqli_num_rows($result) == 1){
        $hashPsd = mysqli_fetch_assoc($result);
        if (password_verify($password, $hashPsd["password"])) {
            session_start();
            $_SESSION["loggedin"] = true;
            $_SESSION["userid"] = $userid;
            header("location: home.php");
        } else {
            $login = false;
        }
    }
    else{
        $login=false;
    }
    
}
?>

<body>
    <header>
        <nav>
            <div class="logo">
                <a href="home.php"><img src="images/logo.png" alt="logo"></a>
                <!-- <h1>FinRem</h1>
                <sub>Online Financial Reminder</sub> -->
            </div>
            
        </nav>
    </header>
    <div class="alertCont">
    <?php
    if ($login == false) {
        echo '<div class="alert alert-danger alert-dismissible fade show p-0 m-0" role="alert">
            <strong class="text-danger">Invalid Credentials!</strong></span><button type="button" class="btn-close m-0 p-0" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>';
    }
    ?>
    </div>
    <div class="main">
        <div class="formContainer glowing">
            <div class="formHeader">
                <img src="images/login.png" alt="loginpic">
            </div>
            <form action="#" class="formCl" method="post">
                <div class="inp">
                    <input type="text" placeholder="Username" name="username" id="username" required>
                    <span><i class="bx bx-user"></i></span>
                </div>
                <div class="inp">
                    <input type="password" placeholder="Password" name="password" id="password" required>
                    <span><i class="bx bx-lock"></i></span>
                </div>
                <button class="loginbtn">Login</button>
            </form>
        </div>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>


</html>