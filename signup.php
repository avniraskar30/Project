<?php
$conn=pg_connect("host=192.168.16.1 port=5432 dbname=tya4 user=tya4");
if(!$conn)
	echo "Connection error";
else
	echo "Connection Done";
$name=$_POST['Fist_name'];
$email=$_POST['Email'];
$pcno=$_POST['Mobile_no'];
$addr=$_POST['Address'];
$pass=$_POST['Password'];

$q2="INSERT INTO patients13 values('$name','$pcno','$email','$addr','$pass');";
$reult=pg_query($conn,$q2);
if(!$result)
{
	echo "error";
}
else
{
	header("location:ppp.html");
	echo "successfully";
}
pg_close($conn);
?>
	
