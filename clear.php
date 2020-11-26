<?php
	@session_start();

	session_destroy();

	echo "<h3>กำลังดำเนินการสั่งซื้อ (ระบบกำลังบันทึกการสั่งซื้อ)....</h3>";
	echo "<meta http-equiv=\"refresh\" content=\"2;URL=index.php\">";
	//header("Location: index.php");

?>
<meta charset="utf-8">