<?php
	if(ISSET($_POST['save_patient'])){
		$itr_no = $_POST['itr_no'];
		$family_no = $_POST['family_no'];
		$firstname = $_POST['firstname'];
		$middlename = $_POST['middlename'];
		$lastname = $_POST['lastname'];
		$birthdate = $_POST['month']."/".$_POST['day']."/".$_POST['year'];
		$age = $_POST['age'];
		$phil_health_no = $_POST['phil_health_no'];
		$address = $_POST['address'];
		$civil_status = $_POST['civil_status'];
		$gender = $_POST['gender'];
		$bp = $_POST['bp'];
		$temp = $_POST['temp']."&deg;C";
		$pr = $_POST['pr'];
		$rr = $_POST['rr'];
		$wt= $_POST['wt']."kg";
		$ht = $_POST['ht'];
		require('../db.php');

		 $query = "INSERT INTO `itr` VALUES('$itr_no', '$family_no', '$phil_health_no', '$firstname', '$middlename', '$lastname', '$birthdate', '$age', '$address', '$civil_status', '$gender', '$bp', '$temp', '$pr', '$rr', '$wt', '".addslashes($ht)."')";

                    mysqli_query($conn,$query)or die (mysqli_error($conn));
		
			echo ("<script> location.replace('patient.php');</script> </script>");	
		
	}

?>
	