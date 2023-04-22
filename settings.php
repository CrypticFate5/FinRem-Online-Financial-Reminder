<?php
include 'partials/_session.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Settings- FinRem</title>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Chivo+Mono:wght@600&display=swap" rel="stylesheet">
    <link rel="icon" href="images/logo1.png">
    <link rel="stylesheet" href="partials/navbar.css">
    <link rel="stylesheet" href="styles/settings.css">
    <link rel="stylesheet" href="partial/essentials.css">
</head>
<?php
$userid = $_SESSION["userid"];
include 'partials/_dbconnect.php';
$remChangeTrigger = true;
$remChangeOk = false;
$changeOk = true;
$changePassTrigger = false;
$currPassCheck = true;
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    switch ($_POST['action']) {
        case 'remSettings':
            $remEmail = $_POST["remEmail"];
            $recur = $_POST["recur"];
            $day = 0;
            $week = 0;
            $month = 0;
            if (isset($_POST["day"])) $day = $_POST["day"];
            if (isset($_POST["week"])) $week = $_POST["week"];
            if (isset($_POST["month"])) $month = $_POST["month"];
            $sql = "update reminder set remEmail='$remEmail' where userid='$userid';
            update reminder set recurring='$recur' where userid='$userid';
            update reminder set day='$day' where userid='$userid';
            update reminder set week='$week' where userid='$userid';
            update reminder set month='$month' where userid='$userid';";
            $result = mysqli_multi_query($conn, $sql);
            if ($result) {
                $remChangeOk = true;
            } else {
                $remChangeTrigger = false;
            }
            break;
        case 'passSettings':
            $sql = "select password from users where userid='$userid';";
            $result = mysqli_query($conn, $sql);
            $actualPass = mysqli_fetch_assoc($result)["password"];
            $currPass = $_POST["currPass"];
            $conPass = $_POST["conPass"];
            $newPass = $_POST["newPass"];
            $verify = password_verify($currPass, $actualPass);
            if (($conPass == $newPass && $verify)) {
                $hashPsd = password_hash($newPass, PASSWORD_DEFAULT);
                $sql = "update users set password='$hashPsd' where userid='$userid';";
                mysqli_query($conn, $sql);
                $changePassTrigger = true;
            } elseif ($verify == false) {
                $currPassCheck = false;
            } else {
                $changeOk = false;
            }
            break;
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
            <div class="bar">
                <ul class="navitems">
                    <li><a href="home.php"><button>Home</button></a></li>
                    <li><a href="tasks.php"><button>Tasks</button></a></li>
                    <li><a href="customers.php"><button>Customers</button></a></li>
                    <li><a href="settings.php"><button class="current">Settings</button></a></li>
                    <li><a href="feedback.php"><button>Feedback</button></a></li>
                    <li><a href="partials/_logout.php"><button>Logout</button></a></li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="main">
        <div class="innerHeader">
            <div class="alertCont">
                <?php
                if ($remChangeOk == true) {
                    echo "<p><img src='images/success.png' class='alertImg'>  Changes Made Successfully</p>";
                } else if ($remChangeTrigger == false) {
                    echo "<p><img src='images/warning.png' class='alertImg'>  Error in Changes</p>";
                }
                if ($currPassCheck == false) {
                    echo "<p><img src='images/warning.png' class='alertImg'>  Current Password Does Not Match</p>";
                } elseif ($changeOk == false)
                    echo "<p><img src='images/success.png' class='alertImg'>  Passwords Do Not Match</p>";
                else if ($changeOk == true && $changePassTrigger == true) {
                    echo "<p><img src='images/success.png' class='alertImg'>  Changes Made Successfully</p>";
                }
                ?>
            </div>
            <div class="title">
                <h1>Settings</h1>
            </div>
        </div>
        <div class="settingPanel">
            <div class="reminderSettings">
                <h2>Reminder Settings</h2>
                <form action="settings.php" method="post" class="formContainer1">
                    <div class="containerEmail">
                        <label for="remEmail">Email</label>
                        <input type="hidden" name="action" value="remSettings">
                        <input type="email" name="remEmail" id="remEmail" required>
                    </div>
                    <div class="recurringRem">
                        <p>
                            Recurring reminders for pending task
                        </p>
                        <div class="op">
                            <label for="recur1">Yes</label>
                            <input type="radio" name="recur" id="recur1" value='1' checked>
                        </div>
                        <div class="op">
                            <label for="recur2">No</label>
                            <input type="radio" name="recur" id="recur2" value='0'>
                        </div>
                    </div>
                    <div class="schedule">
                        <p>Reminder Frequency</p>
                        <div class="op">
                            <label for="day">Everyday</label>
                            <input type="checkbox" name="day" id="day" value='1'>
                        </div>
                        <div class="op">
                            <label for="week">Every Week</label>
                            <input type="checkbox" name="week" id="week" value='1' checked>
                        </div>
                        <div class="op">
                            <label for="month">Every Month</label>
                            <input type="checkbox" name="month" id="month" value='1'>
                        </div>
                    </div>
                    <input type="hidden" name="action" value="passSettings">
                    <button class="subBtn" type="submit">Send Reminders</button>
                </form>
            </div>
            <div class="passwordSettings">
                <h2>Change Password</h2>
                <form action="settings.php" method="post" class="formContainer">
                    <div class="containerPass">
                        <input type="password" name="currPass" id="currPass" required>
                        <span class="label"><span><i class="bx bx-lock"></i></span> Current Password</span>
                    </div>
                    <div class="containerPass">
                        <input type="password" name="conPass" id="conPass" required>
                        <span class="label"><span><i class="bx bx-lock"></i></span> New Password</span>
                    </div>
                    <div class="containerPass">
                        <input type="password" name="newPass" id="newPass" required>
                        <span class="label"><span><i class="bx bx-lock"></i></span> Confirm Password</span>
                    </div>
                    <input type="hidden" name="action" value="passSettings">
                    <button class="subBtn" type="submit">Change</button>
                </form>
            </div>
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