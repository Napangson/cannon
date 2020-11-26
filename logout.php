<meta charset="utf-8">
<?php
	@session_start();
	unset($_SESSION['mid']);
	unset($_SESSION['mname']);
	
	
	echo "<script>";
	echo "window.location='index.php';";
	echo "</script>";
	

?>