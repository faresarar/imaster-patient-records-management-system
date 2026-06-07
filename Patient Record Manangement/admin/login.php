<?php
session_start();
$username = $_POST['username'];
$password = $_POST['password'];

if (isset($_POST['login'])) {
   require('db.php');

    $query = $conn->query("SELECT * FROM `admin` WHERE `username` = '$username' && `password` = '$password'") or die(mysqli_error());

    $fetch = $query->fetch_array();
    $valid = $query->num_rows;

    if ($valid > 0) {
        $_SESSION['admin_id'] = $fetch['admin_id'];
        header("Location: home.php"); // Use header() to redirect
        exit; // Make sure to exit after the header redirect
    } else {
        echo "<script>alert('Invalid username or password')</script>";
        echo "<script>window.location = 'index.php'</script>";
    }

    $conn->close();
}
?>
