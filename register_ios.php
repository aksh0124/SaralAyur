<?php

ini_set("display_errors","ON");
include 'connect.php';
header('Content-type: application/json');

$Username = $_REQUEST['username'];
$Password =$_REQUEST['password'];
$Re_Password = $_REQUEST['re_password'];
$Contact_Num = $_REQUEST['contact_num'];

if($Username && $Password && $Re_Password && $Contact_Num)
{
	$selectquery = "SELECT * FROM loginone WHERE email = '$Username'";

	$selectresult = mysqli_query($con,$selectquery);
	$count=mysqli_num_rows($selectresult);
		
	if($count>0)
	{
		echo $r['code']="User Already Exist";
	}
	else
	{
		$insertquery = "INSERT INTO loginone (email,password,repassword,PhoneNo) VALUES ('$Username','$Password','$Re_Password','$Contact_Num')" ;

		$result = mysqli_query($con, $insertquery);
		if($result)
		{
        	$flag['code']="Successfully registered";
		echo "Successfully registered";
        //echo $result;
		}
		else
		{
        	$flag['code']="UnSuccessfully registered";
       	 //echo "Fail";
		}
		echo json_encode($flag);
	}
}
?>
