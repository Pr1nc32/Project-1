<?php
include("header.php");
?>
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Dashboard</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- about -->
	<div class="about">
		<div class="container">
			<h3 class="w3_agile_header">Dashboard</h3>
			<div class="about-agileinfo w3layouts">
		
		
<div class="row">
	<div class="col-md-4 about-wthree-grids">
		<div class="offic-time">
			<div class="time-top">
				<h4>Category records:</h4>
			</div>
			<div class="time-bottom">
				<h5>Number of category records </h5>
				<h5><?php
				$sqlcount = "select * from category";
				$qsqlcount = mysqli_query($con,$sqlcount);
				echo mysqli_num_rows($qsqlcount);
				?></h5>
				<p> </p>
			</div>
		</div>
	</div>
	<div class="col-md-4 about-wthree-grids">
		<div class="offic-time">
			<div class="time-top">
				<h4>Customer records:</h4>
			</div>
			<div class="time-bottom">
				<h5>Number of customer records</h5>
				<h5><?php
				$sqlcount = "select * from customer";
				$qsqlcount = mysqli_query($con,$sqlcount);
				echo mysqli_num_rows($qsqlcount);
				?></h5>
				<p> </p>
			</div>
		</div>
	</div>
	<div class="col-md-4 about-wthree-grids">
		<div class="offic-time">
			<div class="time-top">
				<h4>product records:</h4>
			</div>
			<div class="time-bottom">
				<h5>Number of product records</h5>
				<h5><?php
				$sqlcount = "select * from product";
				$qsqlcount = mysqli_query($con,$sqlcount);
				echo mysqli_num_rows($qsqlcount);
				?></h5>
				<p> </p>
			</div>
		</div>
	</div>
	<div class="col-md-4 about-wthree-grids">
		<div class="offic-time">
			<div class="time-top">
				<h4>Staff records :</h4>
			</div>
			<div class="time-bottom">
				<h5>Number of staff records</h5>
				<h5><?php
				$sqlcount = "select * from staff";
				$qsqlcount = mysqli_query($con,$sqlcount);
				echo mysqli_num_rows($qsqlcount);
				?></h5>
				<p> </p>
			</div>
		</div>
	</div>
	


				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //about -->

<?php
include("footer.php");
?>