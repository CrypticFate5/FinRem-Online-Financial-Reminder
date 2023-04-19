<?php
include 'partials/_dbconnect.php';
session_start();
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] == false) {
    header("location: partials/_logout.php");
    exit();
}
?>