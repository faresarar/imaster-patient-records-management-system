<?php
	if(ISSET($_POST['save_complaints'])){
		$complaints = $_POST['complaints'];
		$remarks = $_POST['remarks'];
		$itr_no = $_GET['id'];
		$section = $_POST['section'];
		$q = '$_GET[id]';
		
		
			require('db.php');
			
			$query ="INSERT INTO `complaints`(complaints,remark,itr_no,section) VALUES('$complaints', '$remarks', '$itr_no', '$section')";

                    mysqli_query($conn,$query)or die (mysqli_error($conn));


			echo("<script> location.replace('patient.php');</script>");
			$conn->close();
			
	}	
	?>