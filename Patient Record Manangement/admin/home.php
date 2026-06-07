<?php
    require('logincheck.php');
	$date = date("Y", strtotime("+ 8 HOURS"));
	require('db.php');
	$qfecalysis = $conn->query("SELECT COUNT(*) as total FROM `itr`") or die(mysqli_error());
	$ffecalysis = $qfecalysis->fetch_array();
	
?>
<html lang = "eng">
	<head>
		<title>Patient Record Manangement.</title>
		<meta charset = "utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "shortcut icon" href = "../images/logo.png" />
		<link rel = "stylesheet" type = "text/css" href = "../css/bootstrap.css" />
		<link rel = "stylesheet" type = "text/css" href = "../css/jquery.dataTables.css" />
		<link rel = "stylesheet" type = "text/css" href = "../css/customize.css" />
		<?php require 'script.php'?>
		<script src = "../js/jquery.canvasjs.min.js"></script>
		
	</head>
<body>
	<div class = "navbar navbar-default navbar-fixed-top">
		<img src = "../images/logo.png" style = "float:left;" height = "55px" /><label class = "navbar-brand" style="font-family: monospace;">Imaster Patient Record Management System</label>
		<?php 
			$q = $conn->query("SELECT * FROM `admin` WHERE `admin_id` = $_SESSION[admin_id]") or die(mysqli_error());
			$f = $q->fetch_array();
		?>
			<ul class = "nav navbar-right">	
				<li class = "dropdown">
					<a class = "user dropdown-toggle" data-toggle = "dropdown" href = "#">
						<span class = "glyphicon glyphicon-user"></span>
						<?php 
							echo $f['firstname']." ".$f['lastname'];
						?>
						<b class = "caret"></b>
					</a>
				<ul class = "dropdown-menu">
					<li>
						<a class = "me" href = "logout.php"><i class = "glyphicon glyphicon-log-out"></i> Logout</a>
					</li>
				</ul>
				</li>
			</ul>
	</div>
	<div id = "sidebar">
			<ul id = "menu" class = "nav menu">
				<li><a href = "home.php"><i class = "glyphicon glyphicon-home"></i> Dashboard</a></li>
				<li><li><a href = "patient.php"><i class = "glyphicon glyphicon-user"></i> Patient</a></li></li>
				
	</div>
	<div id = "content">
		<br />
		<br />
		<br />
		<div class = "well">
			<div id="container" style="width: 100%;  display: flex;
  align-items: center;" ></div> 
			<center><h1 >Total Patient Population <?php echo $date;?></h1></center>
		 	<center><p style="font-size: 55px; font-weight: 900; color: blue; font-family: monospace;"><?php echo $ffecalysis['total'];?></p></center>
		</div>
	</div>
	<div id = "footer">
		<center><label>&copy; <a href="https://imaster.co.ke/">imaster</a></label></center>
	</div>
		
</body>
</html>