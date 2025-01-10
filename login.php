<?php

$e=$_POST['Username'];
$p=$_POST['Password'];

$conn=pg_connect("host=192.168.16.1 port=5432 dbname=tya4 user=tya4");
if(!$conn)

	die("error");
else
{
	$query="SELECT * FROM patients WHERE pa_em='$e' AND pa_pass='$p'";
        $result=pg_query($conn,$query);

if(!$result)
{
	echo"error occured";
}
else
{
	$row=pg_fetch_assoc($result);
	if($row)
	{
		$ee=$row['pa_em'];
		$pp=$row['pa_pass'];
		if($e == $ee && $p == $pp)
		{
			include('cur.html');
		}
	}

	else
	{
		echo'<script type="text/javascript">';
		echo'alert("Username and password wrong");';
		echo'</script>';
	}
}
}
?>

