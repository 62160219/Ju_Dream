<?php 

	include("connect_db.php");

	$detail = $_POST["rp_detail"];
	$id = $_POST["rp_id"];

	$sql = "UPDATE reply SET rp_detail = ? WHERE rp_id = ? ";
	$stm = $db_con->prepare($sql);//mysql_query
	// กำหนดค่าสำหรับเพิ่มเข้าในฐานข้อมูล
	$stm->bindParam("1",$detail);
	$stm->bindParam("2",$id);
	$result =  $stm->execute();//mysql_query
														
	if($result){
		echo "แก้ไขข้อมูลได้สำเร็จ";
		echo"<meta http-equiv='refresh' content='1;url=reply_me.php'>";//คำสั่งเปลี่ยนหน้าโดยสามารถกำหนดเวลา
	}
	else{
		echo "แก้ไขข้อมูลไม่สำเร็จ";
		echo"<meta http-equiv='refresh' content='1;url=reply_edit.php?edit=".$_POST["rp_id"]."'>";//คำสั่งเปลี่ยนหน้าโดยสามารถกำหนดเวลา
	}
	
?>