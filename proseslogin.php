<?php
include 'connect.php';

$email = $_POST['email'];
$password = $_POST['password'];

$cek = mysqli_query($conn, "SELECT * FROM users WHERE email='$email' AND password='$password'");
