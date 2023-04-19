<?php
include 'partials/_session.php';
$user = $_SESSION['userid'];
$sql = "select* from users where userid='$user';";
$result = mysqli_query($conn, $sql);
$details = mysqli_fetch_assoc($result);
$name = $details["name"];
$branchid = $details["branchid"];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Tasks- FinRem</title>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link rel="icon" href="images/logo1.png">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="styles/tasks.css">
    <link rel="stylesheet" href="partials/navbar.css">
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
                    <li><a href="tasks.php"><button class="current">Tasks</button></a></li>
                    <li><a href="customers.php"><button>Customers</button></a></li>
                    <li><a href="settings.php"><button>Settings</button></a></li>
                    <li><a href="feedback.php"><button>Feedback</button></a></li>
                    <li><a href="partials/_logout.php"><button>Logout</button></a></li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="main">
        <h1>TASKS</h1>
        <div class="tableContainer">
            <table id="tasksTable" data-page-length="10">
                <thead>
                    <th>S.No.</th>
                    <th>Loan AcctNo.</th>
                    <th>Customer ID</th>
                    <th>Task Type</th>
                    <th>Due Date</th>
                    <th>Action</th>
                </thead>
                <tbody>
                    <?php
                    $sql = "select * from tasks where bank_id='$branchid' order by task_date";
                    $result = mysqli_query($conn, $sql);
                    $sno = 0;
                    while ($data = mysqli_fetch_assoc($result)) {
                        $sno++;
                        $acctNo = $data["loan_acctno"];
                        $custid = $data["cust_id"];
                        $taskType = $data["task_type"];
                        $dueDate = $data["task_date"];
                        echo "
                        <tr>
                            <td>$sno</td>
                            <td>$acctNo</td>
                            <td>$custid</td>
                            <td>$taskType</td>
                            <td>$dueDate</td>
                            <td>Action</td>
                        </tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function() {
        $('#tasksTable').DataTable();
    });
</script>

</html>