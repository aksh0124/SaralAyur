<?php

ini_set("display_errors","ON");
include 'connect.php';
header('Content-type: application/json');

$username = $_REQUEST['username'];
$password = $_REQUEST['password'];

if($username && $password)
{

	$query = "SELECT * FROM loginone WHERE email='$username' AND password='$password'";

	$result = mysqli_query($con,$query);
	$count = mysqli_num_rows($result);
	$row= mysqli_fetch_array($result);

	if($count > 0)
	{
		$flag['code']="Login successfully";

		$flag['username']=$username;
		$flag['uid']=$row['cust_id'];

		//echo"success";
	}
	else
	{
		$flag['code']="Login Incorrect";
	}
}
echo json_encode($flag);
?>