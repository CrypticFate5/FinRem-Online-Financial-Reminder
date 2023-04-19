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

<style>
    <?php
    include "styles/home.css";
    include "partials/navbar.css";
    ?>
</style>

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
    <?php
    $custInsert = false;
    $acctInsert = false;
    $failCust = false;
    $failAcct=false;
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
                $sql = "insert into customers values('$branchid','$custId','$custName','$phone','$dob','$aadhar','$pan','$email','$houseNo','$stName','$location','$city','$taluk','$district','$state','$pincode');";
                try{
                    $result = mysqli_query($conn, $sql);
                    $custInsert=true;
                }
                catch(Exception $e){
                    $failCust=true;
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
                $sql1="update accounts set trigPriority=0 where trigPriority=1;";
                $sql2="update documentation set trigPriority=0 where trigPriority=1;";
                $stmt1=mysqli_prepare($conn,$sql1);
                $stmt2=mysqli_prepare($conn,$sql1);
                $temp=mysqli_multi_query($conn,$sql1);
                $temp1=mysqli_multi_query($conn,$sql2);
                mysqli_stmt_store_result($stmt1);
                mysqli_stmt_store_result($stmt2);
                $sql3 = "insert into accounts values('$branchid','$custId','$loanAcctNo','$acctOpenDate','$savingsAcctNo','$loanType','$loanScheme','$sanctionAmt','$sanctionDate','$tenure','$lastReview','$nextReview',1);";
                $stmt3=mysqli_prepare($conn,$sql3);
                mysqli_stmt_store_result($stmt3);
                $result1=mysqli_query($conn,$sql3);
                $sql4="insert into documentation values('$branchid','$custId','$loanAcctNo','$insuranceComp','$insuranceType','$insuranceFrom','$insuranceTo','$premium','$processingChgs','$mortgageChgs','$stampChgs','$inspectionChgs','$vettingChgs','$postSancInsp',1);";
                $stmt4=mysqli_prepare($conn,$sql4);
                mysqli_stmt_store_result($stmt4);
                $result2=mysqli_query($conn,$sql4);
                if(isset($result1)&&isset($result2)){
                    $acctInsert=true;
                }
                else{
                    $fail=true;
                }
                break;
        }
    }
    ?>
    <div class="alertCont">
        <?php
        if ($custInsert == true) {
            echo "Customer Added Successfully";
        } elseif ($acctInsert == true) {
            echo "Account Added Successfully";
        } elseif ($failCust == true) {
            echo "Customer ID already exists !";
        }
        ?>
    </div>
    <div class="main">
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
        <div class="container">
            <div class="buttons">
                <div class="addCust">
                    <button id="myBtn1" class="addBtn">Add Customer</button>
                    <div id="myModal1" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span id="close1" class="close">&times;</span>
                                <h2>Add Customers</h2>
                            </div>
                            <div class="modal-body">
                                <form action="#" method="post" class="formContainer">
                                    <div class="obj">
                                        <label for="custId">Customer ID</label>
                                        <input type="text" name="custId" id="custId" required>
                                    </div>
                                    <div class="obj">
                                        <label for="custName">Name</label>
                                        <input type="text" name="custName" id="custName" required>
                                    </div>
                                    <div class="obj">
                                        <label for="phone">Phone</label>
                                        <input type="text" name="phone" id="phone" maxlength="10" required>
                                    </div>
                                    <div class="obj">
                                        <label for="dob">Date of Birth</label>
                                        <input type="date" name="dob" id="dob" required>
                                    </div>
                                    <div class="obj">
                                        <label for="email">Email</label>
                                        <input type="email" name="email" id="email" required>
                                    </div>
                                    <div class="obj">
                                        <label for="aadhar">Aadhar Number</label>
                                        <input type="text" name="aadhar" id="aadhar" maxlength="12" required>
                                    </div>
                                    <div class="obj">
                                        <label for="pan">PAN</label>
                                        <input type="text" name="pan" id="pan" maxlength="10" required>
                                    </div>
                                    <div class="obj">
                                        <label for="houseNo">House Number</label>
                                        <input type="text" name="houseNo" id="houseNo" required>
                                    </div>
                                    <div class="obj">
                                        <label for="stName">Street Name</label>
                                        <input type="text" name="stName" id="stName" required>
                                    </div>
                                    <div class="obj">
                                        <label for="location">Location</label>
                                        <input type="text" name="location" id="location" required>
                                    </div>
                                    <div class="obj">
                                        <label for="city">City</label>
                                        <input type="text" name="city" id="city" required>
                                    </div>
                                    <div class="obj">
                                        <label for="taluk">Taluk</label>
                                        <input type="text" name="taluk" id="taluk" required>
                                    </div>
                                    <div class="obj">
                                        <label for="district">District</label>
                                        <input type="text" name="district" id="district" required>
                                    </div>
                                    <div class="obj">
                                        <label for="state">State</label>
                                        <input type="text" name="state" id="state" required>
                                    </div>
                                    <div class="obj">
                                        <label for="pincode">Pincode</label>
                                        <input type="text" name="pincode" id="pincode" maxlength="6" required>
                                    </div>
                                    <input type="hidden" name="action" value="custAdd">
                                    <button type="submit" class="subBtn">Add</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="addAccount">
                    <button id="myBtn2" class="addBtn">Add Account</button>
                    <div id="myModal2" class="modal">
                        <div class="modal-content">
                            <div class="modal-header">
                                <span id="close2" class="close">&times;</span>
                                <h2>Add Account</h2>
                            </div>
                            <div class="modal-body">
                                <form action="#" method="post" class="formContainer">
                                    <div class="obj">
                                        <label for="custId">Customer ID</label>
                                        <input type="text" name="custId" id="custId" required>
                                    </div>
                                    <div class="obj">
                                        <label for="loanAcctNo">Loan Account Number</label>
                                        <input type="text" name="loanAcctNo" id="loanAcctNo" required>
                                    </div>
                                    <div class="obj">
                                        <label for="acctOpenDate">Account Opening Date</label>
                                        <input type="date" name="acctOpenDate" id="acctOpenDate" required>
                                    </div>
                                    <div class="obj">
                                        <label for="savingsAcctNo">Savings Account Number</label>
                                        <input type="text" name="savingsAcctNo" id="savingsAcctNo" required>
                                    </div>
                                    <div class="obj">
                                        <label for="loanType">Type of Loan</label>
                                        <select name="loanType" id="loanType" required>
                                            <option value="None">----</option>
                                            <option value="personal">Personal</option>
                                            <option value="car">Car</option>
                                            <option value="two_wheeler">Two Wheeler</option>
                                            <option value="business">Business</option>
                                            <option value="education">Education</option>
                                        </select>
                                    </div>
                                    <div class="obj">
                                        <label for="loanScheme">Loan Scheme</label>
                                        <input type="text" name="loanScheme" id="loanScheme" required>
                                    </div>
                                    <div class="obj">
                                        <label for="sanctionAmt">Sanction Amount</label>
                                        <input type="number" step="0.01" name="sanctionAmt" id="sanctionAmt" required>
                                    </div>
                                    <div class="obj">
                                        <label for="sanctionDate">Sanction Date</label>
                                        <input type="date" name="sanctionDate" id="sanctionDate" required>
                                    </div>
                                    <div class="obj">
                                        <label for="tenure">Tenure (in months)</label>
                                        <input type="number" name="tenure" id="tenure" required>
                                    </div>
                                    <div class="obj">
                                        <label for="lastReview">Last Review Date</label>
                                        <input type="date" name="lastReview" id="lastReview" required>
                                    </div>
                                    <div class="obj">
                                        <label for="nextReview">Next Review Date</label>
                                        <input type="date" name="nextReview" id="nextReview" required>
                                    </div>
                                    <div class="obj">
                                        <label for="insuranceComp">Insurance Company</label>
                                        <select name="insuranceComp" id="insuranceComp">
                                            <option value="None">----</option>
                                            <option value="MS Chola">MS Chola</option>
                                            <option value="Tata AIG">Tata AIG</option>
                                            <option value="Niva Bupa">Niva Bupa</option>
                                            <option value="Star">Star</option>
                                            <option value="India First">India First</option>
                                            <option value="NIC">NIC</option>
                                            <option value="UIC">UIC</option>
                                        </select>
                                    </div>
                                    <div class="obj">
                                        <label for="insuranceType">Insurance Type</label>
                                        <select name="insuranceType" id="insuranceType">
                                            <option value="None">----</option>
                                            <option value="Fire">Fire</option>
                                            <option value="Burglary">Burglary</option>
                                            <option value="Property">Property</option>
                                            <option value="Stock">Stock</option>
                                            <option value="Asset">Asset</option>
                                            <option value="Vehicle">Vehicle</option>
                                        </select>
                                    </div>
                                    <div class="obj">
                                        <label for="insuranceFrom">Insurance From</label>
                                        <input type="date" name="insuranceFrom" id="insuranceFrom" required>
                                    </div>
                                    <div class="obj">
                                        <label for="insuranceTo">Insurance To</label>
                                        <input type="date" name="insuranceTo" id="insuranceTo" required>
                                    </div>
                                    <div class="obj">
                                        <label for="premium">Premium Amount</label>
                                        <input type="number" step="0.01" name="premium" id="premium" required>
                                    </div>
                                    <div class="obj">
                                        <label for="processingChgs">Processing Charges</label>
                                        <input type="number" step="0.01" name="processingChgs" id="processingChgs" required>
                                    </div>
                                    <div class="obj">
                                        <label for="mortgageChgs">Mortgage Charges</label>
                                        <input type="number" step="0.01" name="mortgageChgs" id="mortgageChgs" required>
                                    </div>
                                    <div class="obj">
                                        <label for="stampChgs">Stamp Charges</label>
                                        <input type="number" step="0.01" name="stampChgs" id="stampChgs" required>
                                    </div>
                                    <div class="obj">
                                        <label for="inspectionChgs">Inspection Charges</label>
                                        <input type="number" step="0.01" name="inspectionChgs" id="inspectionChgs" required>
                                    </div>
                                    <div class="obj">
                                        <label for="vettingChgs">Vetting Charges</label>
                                        <input type="number" step="0.01" name="vettingChgs" id="vettingChgs" required>
                                    </div>
                                    <div class="obj">
                                        <label for="postSancInsp">Post Sanction Inspection</label>
                                        <select name="postSancInsp" id="postSancInsp">
                                            <option value="None">----</option>
                                            <option value="Available">Available</option>
                                            <option value="Not Available">Not Available</option>
                                        </select>
                                    </div>
                                    <input type="hidden" name="action" value="acctAdd">
                                    <button type="submit" class="subBtn">Add</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tasks">
                <table id="tasksTable" data-page-length="10">
                    <thead>
                        <th>S.No.</th>
                        <th>Task</th>
                        <th>Due Date</th>
                    </thead>
                    <tbody>
                        <?php
                        $sql = "select * from tasks";
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
        $('#tasksTable').DataTable();
    });
</script>

</html>