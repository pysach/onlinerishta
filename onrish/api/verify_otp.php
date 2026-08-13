<?php
header('Content-Type: application/json');
include 'db.php';
$data=json_decode(file_get_contents("php://input"),true);
$r=$conn->query("SELECT id FROM users WHERE email='{$data['email']}' AND otp='{$data['otp']}' AND otp_expiry>NOW()");
if($r->num_rows){
 echo json_encode(["success"=>true]);
}else{
 echo json_encode(["success"=>false]);
}
?>