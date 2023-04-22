<?php
include 'partials/_session.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback- FinRem</title>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Chivo+Mono:wght@600&display=swap" rel="stylesheet">
    <link rel="icon" href="images/logo1.png">
    <link rel="stylesheet" href="partials/navbar.css">
    <link rel="stylesheet" href="styles/feedback.css">
    <link rel="stylesheet" href="partials/essentials.css">
</head>

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
                    <li><a href="settings.php"><button>Settings</button></a></li>
                    <li><a href="feedback.php"><button class="current">Feedback</button></a></li>
                    <li><a href="partials/_logout.php"><button>Logout</button></a></li>
                </ul>
            </div>
        </nav>
    </header>
    <?php
    $formSub = false;
    $formError = false;
    include 'partials/_dbconnect.php';
    $user = $_SESSION["userid"];
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $rating = $_POST["rating"];
        $comments = $_POST["feed"];
        $sql = "insert into feedback values('$user','$rating','$comments');";
        try {
            $result = mysqli_query($conn, $sql);
            $formSub = true;
        } catch (Exception $e) {
            $formError = true;
        }
    }
    ?>

    <div class="main">
        <div class="innerHeader">
            <div class="alertCont">
                <?php
                if ($formSub == true) {
                    echo "<p><img src='images/success.png' class='alertImg'> Feedback Submitted Successfully</p>";
                } elseif ($formError == true) {
                    echo "<p><img src='images/warning.png' class='alertImg'>Error in Submitting</p>";
                }
                ?>
            </div>
            <div class="title">
                <h1>Rate Us !</h1>
            </div>
        </div>
        <form action="feedback.php" method="post" class="feedbackForm">
            <div class="formRating">
                <div class="rat">
                    <label for="rat1">Very Unsatisfied</label>
                    <input type="radio" name="rating" id="rat1" value="1" required>
                </div>
                <div class="rat">
                    <label for="rat2">Unsatisfied</label>
                    <input type="radio" name="rating" id="rat2" value="2">
                </div>
                <div class="rat">
                    <label for="rat3">Neutral</label>
                    <input type="radio" name="rating" id="rat3" value="3">
                </div>
                <div class="rat">
                    <label for="rat4">Satisfied</label>
                    <input type="radio" name="rating" id="rat4" value="4">
                </div>
                <div class="rat">
                    <label for="rat5">Very Satisfied</label>
                    <input type="radio" name="rating" id="rat5" value="5">
                </div>
            </div>
            <div class="formFeedback">
                <label for="feed">How can we improve?</label>
                <textarea name="feed" id="feed" cols="30" rows="10"></textarea>
            </div>
            <button type="submit" class="submitBtn">Submit</button>
        </form>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
    setTimeout(function() {
        $('.alertCont p').fadeOut(1000);
    }, 8000);
</script>
</html>