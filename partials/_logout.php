<?php

// We could have used anchor tag to redirect to index.php, but we destroyed the session and moved the header to index because when suppose i give anchor tag, and login and enter home page and then go a page backward, then i will find myself in login page and and going another step forward would land me to same home page, but this can be avoided using sessions and it gives a strong security hold too.
session_start();

session_unset();
session_destroy();

header("location: ../index.php");
?>