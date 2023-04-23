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
    <link rel="icon" href="images/logo1.png">
    <link rel="stylesheet" href="styles/login.css">
    <link rel="stylesheet" href="partials/navbar.css">
</head>


<?php
include "partials/_dbconnect.php";
$login = true;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $userid = $_POST["username"];
    $password = $_POST["password"];

    $sql = "select password from users where userid='$userid'";
    $result = mysqli_query($conn, $sql);
    // echo var_dump($result);
    if (mysqli_num_rows($result) == 1) {
        $hashPsd = mysqli_fetch_assoc($result);
        if (password_verify($password, $hashPsd["password"])) {
            session_start();
            $_SESSION["loggedin"] = true;
            $_SESSION["userid"] = $userid;
            header("location: home.php");
        } else {
            $login = false;
        }
    } else {
        $login = false;
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
    <div class="main">
        <div class="alertCont">
            <?php
            if ($login == false) {
                echo "<p><img src='images/warning.png' class='alertImg'>  Invalid Credentials</p>";
            }
            ?>
        </div>
        <div class="formContainer">
            <div class="formHeader">
                <img src="images/login.png" alt="loginpic">
            </div>
            <form action="#" class="formCl" method="post">
                <div class="inp">
                    <input type="text" name="username" id="username" required>
                    <span class="label"><span><i class="bx bx-user"></i></span>  Username</span>
                </div>
                <div class="inp">
                    <input type="password" name="password" id="password" required>
                    <span class="label"><span><i class="bx bx-lock"></i></span>  Password</span>
                </div>
                <div class="forgotPass">
                    <a href="#">Forgot Password ?</a>
                </div>
                <button class="loginbtn">Login</button>
            </form>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
    setTimeout(function() {
        $('.alertCont p').fadeOut(1000);
    }, 8000);
</script>

</html>