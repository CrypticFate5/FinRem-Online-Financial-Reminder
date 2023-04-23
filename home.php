<?php
include 'partials/_dbconnect.php';
include 'partials/_session.php';
$user = $_SESSION['userid'];
$sql = "select* from users where userid='$user';";
$result = mysqli_query($conn, $sql);
$details = mysqli_fetch_assoc($result);
$name = $details["name"];
$branchid = $details["branchid"];
// echo var_dump($result);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home- FinRem</title>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="styles/home.css">
    <link rel="stylesheet" href="partials/navbar.css">
    <link rel="stylesheet" href="partials/modal.css">
    <link rel="icon" href="images/logo1.png">
</head>
<?php
$custInsert = false;
$acctInsert = false;
$failCust = false;
$failAcct = false;
$custExits = false;
$custNotExits = false;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    switch ($_POST["action"]) {
        case "custAdd":
            $custId = $_POST["custId"];
            $custName = $_POST["custName"];
            $phone = $_POST["phone"];
            $dob = $_POST["dob"];
            $email = $_POST["email"];
            $aadhar = $_POST["aadhar"];
            $pan = $_POST["pan"];
            $houseNo = $_POST["houseNo"];
            $stName = $_POST["stName"];
            $location = $_POST["location"];
            $city = $_POST["city"];
            $taluk = $_POST["taluk"];
            $district = $_POST["district"];
            $state = $_POST["state"];
            $pincode = $_POST["pincode"];
            $sqlCustCheck = "select cust_id from customers where cust_id='$custId';";
            try {
                $res = mysqli_query($conn, $sqlCustCheck);
                if (count(mysqli_fetch_all($res)) == 0) {
                    $sql = "insert into customers values('$branchid','$custId','$custName','$phone','$dob','$aadhar','$pan','$email','$houseNo','$stName','$location','$city','$taluk','$district','$state','$pincode');";
                    try {
                        $result = mysqli_query($conn, $sql);
                        $custInsert = true;
                    } catch (Exception $e) {
                        $failCust = true;
                    }
                } else {
                    $custExits = true;
                }
            } catch (Exception $e) {
                $failCust = true;
            }
            break;
        case "acctAdd":
            $custId = $_POST["custId"];
            $loanAcctNo = $_POST["loanAcctNo"];
            $acctOpenDate = $_POST["acctOpenDate"];
            $savingsAcctNo = $_POST["savingsAcctNo"];
            $loanType = $_POST["loanType"];
            $loanScheme = $_POST["loanScheme"];
            $sanctionAmt = $_POST["sanctionAmt"];
            $sanctionDate = $_POST["sanctionDate"];
            $tenure = $_POST["tenure"];
            $lastReview = $_POST["lastReview"];
            $nextReview = $_POST["nextReview"];
            $insuranceComp = $_POST["insuranceComp"];
            $insuranceType = $_POST["insuranceType"];
            $insuranceFrom = $_POST["insuranceFrom"];
            $insuranceTo = $_POST["insuranceTo"];
            $premium = $_POST["premium"];
            $processingChgs = $_POST["processingChgs"];
            $mortgageChgs = $_POST["mortgageChgs"];
            $stampChgs = $_POST["stampChgs"];
            $inspectionChgs = $_POST["inspectionChgs"];
            $vettingChgs = $_POST["vettingChgs"];
            $postSancInsp = $_POST["postSancInsp"];
            $sqlCustCheck = "select cust_id from customers where cust_id='$custId';";
            try {
                $resCheck = mysqli_query($conn, $sqlCustCheck);
                // $temp=mysqli_fetch_all($resCheck);
                // echo var_dump($temp);
                if (count(mysqli_fetch_all($resCheck)) == 1) {
                    $sql1 = "update accounts set trigPriority=0 where trigPriority=1;";
                    $sql2 = "update documentation set trigPriority=0 where trigPriority=1;";
                    $sql3 = "insert into accounts values('$branchid','$custId','$loanAcctNo','$acctOpenDate','$savingsAcctNo','$loanType','$loanScheme','$sanctionAmt','$sanctionDate','$tenure','$lastReview','$nextReview',1);";
                    $sql4 = "insert into documentation values('$branchid','$custId','$loanAcctNo','$insuranceComp','$insuranceType','$insuranceFrom','$insuranceTo','$premium','$processingChgs','$mortgageChgs','$stampChgs','$inspectionChgs','$vettingChgs','$postSancInsp',1);";
                    // The next 8 lines are written inorder to unbuffer the php so as to run all the query here and as well as the fetch ones in the table to display(php can only one query at a time but this breaks up and executes it all)
                    $stmt1 = mysqli_prepare($conn, $sql1);
                    $stmt2 = mysqli_prepare($conn, $sql1);
                    $stmt3 = mysqli_prepare($conn, $sql3);
                    $stmt4 = mysqli_prepare($conn, $sql4);
                    mysqli_stmt_store_result($stmt1);
                    mysqli_stmt_store_result($stmt2);
                    mysqli_stmt_store_result($stmt3);
                    mysqli_stmt_store_result($stmt4);
                    try {
                        $temp1 = mysqli_query($conn, $sql1);
                        $temp2 = mysqli_query($conn, $sql2);
                        $result1 = mysqli_query($conn, $sql3);
                        $result2 = mysqli_query($conn, $sql4);
                        $acctInsert = true;
                    } catch (Exception $e) {
                        echo $e;
                        $failAcct = true;
                    }
                } else {
                    $custNotExits = true;
                }
            } catch (Exception $e) {
                $failAcct = true;
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
            <ul class="navitems">
                <li><a href="home.php"><button class="current">Home</button></a></li>
                <li><a href="tasks.php"><button>Tasks</button></a></li>
                <li><a href="customers.php"><button>Customers</button></a></li>
                <li><a href="settings.php"><button>Settings</button></a></li>
                <li><a href="feedback.php"><button>Feedback</button></a></li>
                <li><a href="partials/_logout.php"><button>Logout</button></a></li>
            </ul>
        </nav>

    </header>

    <div class="main">
        <div class="innerHeader">
            <div class="alertCont">
                <?php
                if ($custInsert == true) {
                    echo "<p><img src='images/success.png' class='alertImg'> Customer Added Successfully</p>";
                } elseif ($custNotExits == true) {
                    echo "<p><img src='images/warning.png' class='alertImg'> Customer does not exist! Try adding customer first</p>";
                } elseif ($failAcct == true) {
                    echo "<p><img src='images/warning.png' class='alertImg'> Account Addition Unsuccessful</p>";
                } elseif ($acctInsert == true) {
                    echo "<p><img src='images/success.png' class='alertImg'> Account Added Successfully</p>";
                } elseif ($custExits == true) {
                    echo "<p><img src='images/warning.png' class='alertImg'> Customer ID already exists</p>";
                }
                ?>
            </div>
            <div class="title">
                <h1>Welcome
                    <?php echo $name . " !";
                    ?>
                </h1>
                <h4>
                    <?php
                    echo $branchid . " ";
                    echo " @" . $user;
                    ?>
                </h4>
            </div>
        </div>

        <div class="container">
            <div class="buttons">
                <div class="addCust">
                    <button id="myBtn1" class="addBtn">Add Customer</button>
                    <?php
                    include 'modals/homeCustAdd.php';
                    ?>
                </div>
                <div class="updateCustomer">
                    <button id="myBtn3" class="addBtn">Update Customer</button>
                    <?php
                    include 'modals/homeCustUpdate.php';
                    ?>
                </div>
                <div class="addAccount">
                    <button id="myBtn2" class="addBtn">Add Account</button>
                    <?php
                    include 'modals/homeAcctAdd.php';
                    ?>
                </div>
            </div>
            <div class="tasks">
                <table id="tasksTable" data-page-length="6" class="display">
                    <caption>Upcoming Tasks</caption>
                    <thead>
                        <th>S.No.</th>
                        <th>Task</th>
                        <th>Due Date</th>
                    </thead>
                    <tbody>
                        <?php
                        $sql = "select * from tasks where bank_id='$branchid' order by task_date";
                        $result = mysqli_query($conn, $sql);
                        $sno = 0;
                        while ($data = mysqli_fetch_assoc($result)) {
                            $sno++;
                            $acctNo = $data["loan_acctno"];
                            $taskType = $data["task_type"];
                            $dueDate = $data["task_date"];
                            echo "
                        <tr>
                        <td>$sno</td>
                        <td>$taskType due for AcctNo: $acctNo</td>
                        <td>$dueDate</td>
                        </tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
<script src="home.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function() {
        $('#tasksTable').DataTable({
            "lengthChange": false,
            "paginate": false,
            "info": false,
            scrollY: '250px',
            scrollCollapse: true
        });
    });
    setTimeout(function() {
        $('.alertCont p').fadeOut(1000);
    }, 8000);
</script>

</html>