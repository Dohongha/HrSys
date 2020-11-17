<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$title = $_POST['title'];
		$description = $_POST['description'];

		$sql = "INSERT INTO notice (title, description) VALUES ('$title', '$description')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Notice added successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}	
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: notice.php');

?>