<?php
include("header.php");

function getRandomString($n) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $randomString = '';
  
    for ($i = 0; $i < $n; $i++) {
        $index = rand(0, strlen($characters) - 1);
        $randomString .= $characters[$index];
    }
  
    return $randomString;
}

if(isset($_SESSION['custid']))
{
	echo "<script>window.location='index.php';</script>";
}
if(isset($_POST['submit'])){ 
	
	$email = $_POST["email"];
	$sqlquery = "SELECT custname, email, cpassword FROM customer WHERE email='$email' AND status='Active'";
	$customer = mysqli_query($con, $sqlquery);

	if(mysqli_num_rows($customer) == 1){

		$results = mysqli_fetch_array($customer);

		$new_password = md5(getRandomString(8));
		$sql_update = "UPDATE customer SET cpassword = '$new_password' WHERE email = '$email';";

		$result = mysqli_query($con, $sql_update);

		$subject = "New Password request - Shri lakshmi supermarket!";
		$message = "Hi $results[0], \n You've requested to change you password. This will be your new password <b>$new new_password</b>.";

		if(mail($results[1], $subject, $message)){

			echo "<script type=text/javascript > alert('Please check your email for new new password'); window.location='login.php'; </script>";
		}else{
			echo "<script type=text/javascript > alert('mail sent failed!'); </script>";
		}
	}

	else{
		echo "<script>alert('You have entered invalid login credentials..');</script>";
	}
}
?>
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Login Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- login -->
	<div class="login">
		<div class="container">
			<h2>Look for your ID</h2>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
				<form method="post" action="">
				<div class="form-group">
					<input type="email" placeholder="Email Address" name="email" id="email" >
				</div>
					
					<input type="submit" name="submit" id="submit" value="Reset Password">
				</form>
			</div>

			<h4>For New People</h4>
			<p><a href="register.php">Register Here</a> (Or) go back to <a href="index.php">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
		</div>
	</div>
<!-- //login -->
<?php
include("footer.php");
?>