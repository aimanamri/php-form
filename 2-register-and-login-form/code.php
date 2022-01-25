<?php
session_start();
include("dbcon.php");

function sendemail_verify($name, $email, $verify_token)
{
}


if (isset($_POST["register_btn"])) {
    $name = $_POST["name"];
    $phone = $_POST["phone"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    $confirm_password = $_POST["confirm_password"];
    $verify_token = md5(uniqid(rand(), true));

    // Check if the email is already in the database
    $check_email_query = "SELECT * FROM users WHERE email = '$email'LIMIT 1";
    $check_email_result = mysqli_query($conn, $check_email_query);

    if (mysqli_num_rows($check_email_result) > 0) {
        // echo "<script>alert('Email is already in use!')</script>";
        // exit();
        $_SESSION["status"] = "Email is already in use!";
        header("Location: register.php");
    } else {
        // Insert User / Register User into the database
        if ($password == $confirm_password) {
            $query = "INSERT INTO users(name, phone, email, password,verify_token) VALUES('$name', '$phone', '$email', '$password','$verify_token')";
            $query_run = mysqli_query($conn, $query);
            if ($query_run) {
                sendemail_verify("$name", "$email", "$verify_token");
                $_SESSION["status"] = "User registered successfully! Please verify your email address.";
            } else {
                $_SESSION["status"] = "Registration Failed!";
                header("Location: register.php");
            }
        } else {
            echo "Password does not match";
        }
    }
}