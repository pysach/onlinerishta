<?php
header('Content-Type: application/json');
include 'db.php';
$data=json_decode(file_get_contents("php://input"),true);
$otp=rand(100000,999999);
$conn->query("UPDATE users SET otp='$otp',otp_expiry=DATE_ADD(NOW(),INTERVAL 5 MINUTE) WHERE email='{$data['email']}'");
echo json_encode(["success"=>true,"otp"=>$otp]);
?>