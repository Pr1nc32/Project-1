<?php
include("header.php");
if(!isset($_SESSION['staffid']))
{
	echo "<script>window.location='index.php';</script>";
}
if(isset($_POST['submit']))
{
		//Update Statement Starts Here
		$sql="UPDATE staff SET city_id='$_POST[city_id]', staff_type='$_POST[staff_type]', staffname='$_POST[staffname]', loginid='$_POST[loginid]'";
		$sql =$sql .", emailid='$_POST[emailid]', contactno='$_POST[contactno]' WHERE staffid='$_SESSION[staffid]'";
		$qsql = mysqli_query($con,$sql);
		echo mysqli_error($con);
		if(mysqli_affected_rows($con) == 1)
		{
			echo "<script>alert('Staff Profile updated successfully');</script>";
		}
		//Update Statement Ends Here
}
if(isset($_SESSION['staffid']))
{
	$sqledit = "SELECT * FROM staff where staffid='$_SESSION[staffid]'";
	$qsqledit = mysqli_query($con,$sqledit);
	$rsedit = mysqli_fetch_array($qsqledit);
}
?>
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Staff</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- register -->
	<div class="register">
		<div class="container">
			<h2>Staff</h2>
			<div class="login-form-grids" style="width: 100%;">
				<h5>Staff information</h5>
<form action="" method="post" onsubmit="return validateform()">
	
	<div class="row" >
		<div class="col-md-6">
			<div class="form-group">
				Staff Name <span id="id_staffname" class="err_msg"></span>
				<input type="text" name="staffname" id="staffname" placeholder="Staff Name"  class="form-control" value="<?php echo $rsedit['staffname']; ?>" >
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
				Login ID  <span id="id_loginid" class="err_msg"></span>
				<input type="text" name="loginid" id="loginid" placeholder="Login ID"  class="form-control"  value="<?php echo $rsedit['loginid']; ?>" >
			</div>
		</div>
	</div>
	
	<div class="row" >
		<div class="col-md-6">
			<div class="form-group">
			Email ID  <span id="id_emailid" class="err_msg"></span>
			<input type="email" name="emailid" id="emailid" placeholder="Email ID"  class="form-control" value="<?php echo $rsedit['emailid']; ?>"  >
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group">
			Mobile No.  <span id="id_contactno" class="err_msg"></span>
			<input type="number" name="contactno" id="contactno" placeholder="Mobile No."  class="form-control" value="<?php echo $rsedit['contactno']; ?>" >
			</div>
		</div>
	</div>  
		 
	<input type="submit" value="Update Profile" class="btn btn-info btn-lg" name="submit" id="submit" >
</form>
			</div>
		</div>
	</div>
<!-- //register -->
<?php
include("footer.php");
?>        
<script>
function validateform()
{
	//###########
	var numericExpression = /^[0-9]+$/;
	var alphaExp = /^[a-zA-Z]+$/;
	var alphaspaceExp = /^[a-zA-Z\s]+$/;
	var alphanumbericExp = /^[0-9a-zA-Z]+$/;
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	//###########
	$(".err_msg").html('');
	var validate = "true";
	//###############################################
	if($("#staff_type").val() == "")
	{
		$('#id_staff_type').html("Kindly select staff...");
		validate = "false";
	}
	//###############################################
	if(!$("#staffname").val().match(alphaspaceExp))
	{
		$('#id_staffname').html("Staff name is not valid...");
		validate = "false";
	}
	//###############################################
	if($("#staffname").val() == "")
	{
		$('#id_staffname').html("Staff name should not be empty...");
		validate = "false";
	}
	//###############################################
	if($("#loginid").val() == "")
	{
		$('#id_loginid').html("Login ID should not be empty...");
		validate = "false";
	}     
	//###############################################
	if(!$("#emailid").val().match(emailExp))
	{
		$('#id_emailid').html("Entered Email Id is not valid...");
		validate = "false";
	}
	//###############################################
	if($("#emailid").val() == "")
	{
		$('#id_emailid').html("Email ID should not be empty...");
		validate = "false";
	}
	//###############################################
	if($("#contactno").val().length != 9)
	{
		$('#id_contactno').html("Entered Mobile Number should contain 10 digits...");
		validate = "false";
	}
	//###############################################
	if(!$("#contactno").val().match(numericExpression))
	{
		$('#id_contactno').html("Entered Mobile Number is not valid...");
		validate = "false";
	} 
	//###############################################
	if($("#contactno").val() == "")
	{
		$('#id_contactno').html("Mobile Number should not be empty...");
		validate = "false";
	}
	//###############################################
	if(validate == "true")
	{
		return true;
	}
	else
	{
		return false;
	}
}
</script>
	