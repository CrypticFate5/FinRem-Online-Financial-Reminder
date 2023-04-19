<?php
session_start();
$pswd="welcome";
$hashedpswd=password_hash($pswd,PASSWORD_DEFAULT);
// echo $_SESSION['userid'];
include 'partials/_dbconnect.php';
// $userD=$_SESSION['userid'];
$sql="update users set password='$hashedpswd' where userid='anil'";
$result=mysqli_query($conn,$sql);
?>