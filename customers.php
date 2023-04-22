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
    <title>Customers- FinRem</title>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link rel="icon" href="images/logo1.png">
    <link rel="stylesheet" href="styles/customers.css">
    <link rel="stylesheet" href="partials/navbar.css">
    <link rel="stylesheet" href="partials/modal.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
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
                    <li><a href="customers.php"><button class="current">Customers</button></a></li>
                    <li><a href="settings.php"><button>Settings</button></a></li>
                    <li><a href="feedback.php"><button>Feedback</button></a></li>
                    <li><a href="partials/_logout.php"><button>Logout</button></a></li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="main">
        <div class="innerHeader">
            <div class="alertCont"></div>
            <div class="title">
                <h1>Customers</h1>
            </div>
        </div>
        <div class="table">
            <table id="customersTable">
                <thead>
                    <th>Customer ID</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Date of Birth</th>
                    <th>Aadhar</th>
                    <th>PAN</th>
                    <th>Email</th>
                    <th>Location</th>
                    <th>Address</th>
                </thead>
                <tbody>
                    <?php
                    $sql = "select* from customers where bank_id='$branchid' order by cust_id ;";
                    $result = mysqli_query($conn, $sql);
                    $n = mysqli_num_rows($result);
                    $sno = 0;
                    while ($data = mysqli_fetch_assoc($result)) {
                        $cust_id = $data["cust_id"];
                        $custname = $data["cust_name"];
                        $phone = $data["phone"];
                        $dob = $data["dob"];
                        $aadhar = $data["aadhar"];
                        $pan = $data["pan"];
                        $email = $data["email"];
                        $house = $data["house_number"];
                        $st_name = $data["st_name"];
                        $location = $data["location"];
                        $city = $data["city"];
                        $taluk = $data["taluk"];
                        $district = $data["district"];
                        $state = $data["state"];
                        $pincode = $data["pincode"];
                        $addrMod = "<div class='addCust'>
                        <button id='myBtn' class='addBtn myBtn'>Complete Address</button>
                        <div class='modal myModal'>
                            <div class='modal-content'>
                                <div class='modal-header'>
                                    <span id='close' class='close'>&times;</span>
                                    <h2>Address</h2>
                                </div>
                                <div class='modalBody'>
                                    <table id='addrTable' data-page-length='7'>
                                        <thead>
                                            <th>Name</th>
                                            <th>House Number</th>
                                            <th>Street Number</th>
                                            <th>Location</th>
                                            <th>City</th>
                                            <th>Taluk</th>
                                            <th>District</th>
                                            <th>State</th>
                                            <th>Pincode</th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>$custname</td>
                                                <td>$house</td>
                                                <td>$st_name</td>       
                                                <td>$location</td>
                                                <td>$city</td>
                                                <td>$taluk</td>
                                                <td>$district</td>
                                               <td>$state</td>
                                               <td>$pincode</td>

                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>";
                        $sno++;
                        echo "<tr class='tableRow'>
                            <td>$cust_id</td>
                            <td>$custname</td>
                            <td>$phone</td>
                            <td>$dob</td>
                            <td>$aadhar</td>
                            <td>$pan</td>
                            <td>$email</td>
                            <td>$location</td>
                            <td>$addrMod</td>
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
        $('#customersTable').DataTable({
            "sScrollY": ($(window).height() - 350),
            "lengthChange":false,
            "paginate":false,
            "info":false,
            scrollCollapse:true
        });
    });
</script>
<script src="customers.js"></script>

</html>