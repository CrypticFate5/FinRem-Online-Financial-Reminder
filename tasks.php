<?php
include 'partials/_session.php';
$user = $_SESSION['userid'];
$sql = "select* from users where userid='$user';";
$result = mysqli_query($conn, $sql);
$details = mysqli_fetch_assoc($result);
$name = $details["name"];
$reviewChangeOk=false;
$reviewError=false;
$branchid = $details["branchid"];
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nextRev = $_POST["newReviewDate"];
    $lastRev = date("y-m-d");
    $task=$_POST["task"];
    $currAcct=$_POST["currAcct"];
    if($task=="insurance"){
        $sql1="update documentation set trigPriority=0 where trigPriority=1;";
        $sql2="update documentation set insurance_from='$lastRev', insurance_to='$nextRev' ,trigPriority=1 where loan_acctno='$currAcct';";
        // $stmt=mysqli_prepare($conn,$sql);
        // mysqli_stmt_store_result($stmt);
        try{
            mysqli_query($conn,$sql1);
            mysqli_query($conn,$sql2);
            $reviewChangeOk=true;
        }
        catch(Exception $e){
            $reviewError=true;
        }
    }
    else{
        $sql1="update accounts set trigPriority=0 where trigPriority=1;";
        $sql2="update accounts set last_review='$lastRev',next_review='$nextRev',trigPriority=1 where loan_acctno='$currAcct';";
        // $stmt=mysqli_prepare($conn,$sql);
        // mysqli_stmt_store_result($stmt);
        try{
            mysqli_query($conn,$sql1);
            mysqli_query($conn,$sql2);
            $reviewChangeOk=true;
        }
        catch(Exception $e){
            $reviewError=true;
        }
    }
}
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
    <link rel="stylesheet" href="partials/navbar.css">
    <link rel="stylesheet" href="partials/modal.css">
    <link rel="stylesheet" href="styles/tasks.css">
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
        <div class="innerHeader">
            <div class="alertCont">
                <?php
                if($reviewChangeOk==true){
                    echo "<p><img src='images/success.png' class='alertImg'>Account Reviewed Successfully</p>";
                }
                else if($reviewError==true){
                    echo "<p><img src='images/warning.png' class='alertImg'>Account Review Unsuccessfully</p>";
                }
                ?>
            </div>
            <div class="title">
                <h1>Upcoming Tasks</h1>
            </div>
        </div>
        <div class="tableContainer">
            <table id="tasksTable" class="display" data-page-length="10">
                <thead>
                    <th>S.No.</th>
                    <th>Loan AcctNo.</th>
                    <th>Customer ID</th>
                    <th>Task Type</th>
                    <th>Due Date</th>
                    <th>Review</th>
                    <th>Action</th>
                </thead>
                <tbody>
                    <?php
                    $sql = "select * from tasks where bank_id='$branchid' order by task_date";
                    // $stmt = mysqli_prepare($conn, $sql);
                    $result = mysqli_query($conn, $sql);
                    // mysqli_stmt_store_result($stmt);
                    $sno = 0;
                    while ($data = mysqli_fetch_assoc($result)) {
                        $sno++;
                        $acctNo = $data["loan_acctno"];
                        $custid = $data["cust_id"];
                        $taskType = $data["task_type"];
                        $dueDate = $data["task_date"];
                        $sql1 = "select * from accounts where loan_acctno='$acctNo';";
                        // $stmt1 = mysqli_prepare($conn, $sql1);
                        // mysqli_stmt_store_result($stmt1);
                        $sql2 = "select * from documentation where loan_acctno='$acctNo';";
                        // $stmt2 = mysqli_prepare($conn, $sql2);
                        // mysqli_stmt_store_result($stmt2);
                        $result1 = mysqli_query($conn, $sql1);
                        $data1 = mysqli_fetch_assoc($result1);
                        $custId = $data1["cust_id"];
                        $loanAcctNo = $data1["loan_acctno"];
                        $acctOpenDate = $data1["acct_opening"];
                        $savingsAcctNo = $data1["savings_acctno"];
                        $loanType = $data1["loan_type"];
                        $loanScheme = $data1["loan_scheme"];
                        $sanctionAmt = $data1["sanction_amt"];
                        $sanctionDate = $data1["sanction_date"];
                        $tenure = $data1["tenure"];
                        $lastReview = $data1["last_review"];
                        $nextReview = $data1["next_review"];
                        $result2 = mysqli_query($conn, $sql2);
                        $data2 = mysqli_fetch_assoc($result2);
                        $insuranceComp = $data2["insurance_comp"];
                        $insuranceType = $data2["insurance_type"];
                        $insuranceFrom = $data2["insurance_from"];
                        $insuranceTo = $data2["insurance_to"];
                        $premium = $data2["premium"];
                        $processingChgs = $data2["processing_charges"];
                        $mortgageChgs = $data2["mortgage_charges"];
                        $stampChgs = $data2["stamp_charges"];
                        $inspectionChgs = $data2["inspection_charges"];
                        $vettingChgs = $data2["vetting_charges"];
                        $postSancInsp = $data2["post_sanction_inspection"];
                        $temp = "";
                        if ($postSancInsp == 1) {
                            $temp = 'Available';
                        } else {
                            $temp = 'Not Available';
                        }
                        echo "
                        <tr>
                            <td>$sno</td>
                            <td>$acctNo</td>
                            <td>$custid</td>
                            <td>$taskType</td>
                            <td>$dueDate</td>
                            <td><button id='reviewBtn' class='reviewBtn'>Review Account</button>
                                <div id='modal' class='modal'>
                                    <div class='modal-content'>
                                        <div class='modal-header'>
                                            <span id='close' class='close'>&times;</span>
                                            <h2>Reivew Account</h2>
                                        </div>
                                        <div class='modal-body'>
                                        <form class='formContainer'>
                                        <div class='obj'>
                                            <label for='custId'>Customer ID</label>
                                            <input type='text' placeholder='$custId' name='custId' id='custId' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='loanAcctNo'>Loan Account Number</label>
                                            <input type='text' placeholder='$loanAcctNo' name='loanAcctNo' id='loanAcctNo' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='acctOpenDate'>Account Opening Date</label>
                                            <input type='text' placeholder='$acctOpenDate' name='acctOpenDate' id='acctOpenDate' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='savingsAcctNo'>Savings Account Number</label>
                                            <input type='text' placeholder='$savingsAcctNo' name='savingsAcctNo' id='savingsAcctNo' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='loanType'>Type of Loan</label>
                                            <input type='text' placeholder='$loanType' name='loanType' id='loanType' disabled>
                                            <!-- <select name='loanType' id='loanType'>
                                                <option value='None'>----</option>
                                                <option value='personal'>Personal</option>
                                                <option value='car'>Car</option>
                                                <option value='two_wheeler'>Two Wheeler</option>
                                                <option value='business'>Business</option>
                                                <option value='education'>Education</option>
                                            </select> -->
                                        </div>
                                        <div class='obj'>
                                            <label for='loanScheme'>Loan Scheme</label>
                                            <input type='text' placeholder='$loanScheme' name='loanScheme' id='loanScheme' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='sanctionAmt'>Sanction Amount</label>
                                            <input type='number' placeholder='$sanctionAmt' step='0.01' name='sanctionAmt' id='sanctionAmt' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='sanctionDate'>Sanction Date</label>
                                            <input type='text' placeholder='$sanctionDate' name='sanctionDate' id='sanctionDate' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='tenure'>Tenure (in months)</label>
                                            <input type='number' placeholder='$tenure' name='tenure' id='tenure' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='lastReview'>Last Review Date</label>
                                            <input type='text' placeholder='$lastReview' name='lastReview' id='lastReview' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='nextReview'>Next Review Date</label>
                                            <input type='text' placeholder='$nextReview' name='nextReview' id='nextReview' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='insuranceComp'>Insurance Company</label>
                                            <input type='text' placeholder='$insuranceComp' name='insuranceCom' id='insuranceComp' disabled>
                                            <!-- <select name='insuranceComp' id='insuranceComp'>
                                                <option value='None'>----</option>
                                                <option value='MS Chola'>MS Chola</option>
                                                <option value='Tata AIG'>Tata AIG</option>
                                                <option value='Niva Bupa'>Niva Bupa</option>
                                                <option value='Star'>Star</option>
                                                <option value='India First'>India First</option>
                                                <option value='NIC'>NIC</option>
                                                <option value='UIC'>UIC</option>
                                            </select> -->
                                        </div>
                                        <div class='obj'>
                                            <label for='insuranceType'>Insurance Type</label>
                                            <input type='text' placeholder='$insuranceType' name='insuranceType' id='insuranceType' disabled>
                                            <!-- <select name='insuranceType' id='insuranceType'>
                                                <option value='None'>----</option>
                                                <option value='Fire'>Fire</option>
                                                <option value='Burglary'>Burglary</option>
                                                <option value='Property'>Property</option>
                                                <option value='Stock'>Stock</option>
                                                <option value='Asset'>Asset</option>
                                                <option value='Vehicle'>Vehicle</option>
                                            </select> -->
                                        </div>
                                        <div class='obj'>
                                            <label for='insuranceFrom'>Insurance From</label>
                                            <input type='text' placeholder='$insuranceFrom' name='insuranceFrom' id='insuranceFrom' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='insuranceTo'>Insurance To</label>
                                            <input type='text' placeholder='$insuranceTo' name='insuranceTo' id='insuranceTo' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='premium'>Premium Amount</label>
                                            <input type='number' placeholder='$premium' step='0.01' name='premium' id='premium' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='processingChgs'>Processing Charges</label>
                                            <input type='number' placeholder='$processingChgs' step='0.01' name='processingChgs' id='processingChgs' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='mortgageChgs'>Mortgage Charges</label>
                                            <input type='number' placeholder='$mortgageChgs' step='0.01' name='mortgageChgs' id='mortgageChgs' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='stampChgs'>Stamp Charges</label>
                                            <input type='number' placeholder='$stampChgs' step='0.01' name='stampChgs' id='stampChgs' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='inspectionChgs'>Inspection Charges</label>
                                            <input type='number' placeholder='$inspectionChgs' step='0.01' name='inspectionChgs' id='inspectionChgs' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='vettingChgs'>Vetting Charges</label>
                                            <input type='number' placeholder='$vettingChgs' step='0.01' name='vettingChgs' id='vettingChgs' disabled>
                                        </div>
                                        <div class='obj'>
                                            <label for='postSancInsp'>Post Sanction Inspection</label>
                                            <input type='text' name='postSancInsp' id='postSancInsp' placeholder='$temp' disabled>
                                            <!-- <select name='postSancInsp' id='postSancInsp'>
                                                <option value='None'>----</option>
                                                <option value='Available'>Available</option>
                                                <option value='Not Available'>Not Available</option>
                                            </select> -->
                                        </div>
                                    </form>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td><button id='reviewBtn' class='reviewBtn'>Push Due Date</button>
                            <div id='modal' class='modal'>
                                <div class='modal-content'>
                                    <div class='modal-header'>
                                        <span id='close' class='close'>&times;</span>
                                        <h2>Push Due Dates</h2>
                                    </div>
                                    <div class='modal-body'>
                                    <form action='#' method='post' class='modalBody'>
                                    <div class='cont'>
                                        <label for='newReviewDate'>New Review Date</label>
                                        <input type='date' name='newReviewDate' id='newReviewDate' required>
                                        <input type='hidden' name='currAcct' id='currAcct' value='$loanAcctNo'>
                                        <input type='hidden' name='task' id='task' value='$taskType'>
                                    </div>
                                    <div class='cont'>
                                        <button type='submit' class='pushBtn'>Push</button>
                                    </div>
                               </form> 
                                    </div>
                                </div>
                            </div></td>
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
<script src="tasks.js"></script>
<script>
    $(document).ready(function() {
        $('#tasksTable').DataTable({
            "sScrollY": ($(window).height() - 350),
            "lengthChange":false,
            "paginate":false,
            "info":false,
            scrollCollapse:true
        });
    });
    setTimeout(function() {
        $('.alertCont p').fadeOut(1000);
    }, 8000);
</script>

</html>