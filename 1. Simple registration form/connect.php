<?php
$firstName = $_POST['firstName'];
$lastName = $_POST['lastName'];
$gender = $_POST['gender'];
$email = $_POST['email'];
$password = $_POST['password'];
$number = $_POST['number'];

// Database connection
$conn = new mysqli('localhost', 'root', '', 'form_submit'); // (hostname,username,password,database)
if ($conn->connect_error) {
	echo "$conn->connect_error";
	die("Connection Failed : " . $conn->connect_error);
} else {
	$stmt = $conn->prepare("insert into registration(firstName, lastName, gender, email, password, number) values(?, ?, ?, ?, ?, ?)");
	$stmt->bind_param("sssssi", $firstName, $lastName, $gender, $email, $password, $number);
	$execval = $stmt->execute();
	echo $execval;

	if ($firstName != '' && $lastName != '' && $gender != '' && $email != '' && $password != '' && $number != '') {
		//  To redirect form on a particular page
		echo "Registration successfully...";
		header("Location:https://twitter.com/aimanamri_");
	} else {
		echo "Please fill all fields.....!!!!!!!!!!!!";
	}
	$stmt->close();
	$conn->close();
}