<?php
session_start();

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require "PHPMailer/src/PHPMailer.php";
require "PHPMailer/src/SMTP.php";
require "PHPMailer/src/Exception.php";

// ---------------- Validate Email ----------------
if (!isset($_POST['email'])) {
    echo "Invalid request";
    exit;
}

$email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
if (!$email) {
    echo "Invalid Email";
    exit;
}

// ---------------- Generate OTP ----------------
$otp = random_int(100000, 999999);

// Securely store OTP hash (NOT plaintext)
$_SESSION['otp_hash']   = password_hash($otp, PASSWORD_DEFAULT);
$_SESSION['otp_email']  = $email;
$_SESSION['otp_expiry'] = time() + 300; // expires in 5 min

// ---------------- Send Email ----------------
$mail = new PHPMailer(true);

try {
    $mail->isSMTP();
    $mail->Host       = "mail.onlinerishta.in";  // <-- replace
    $mail->SMTPAuth   = true;
    $mail->Username   = "support@onlinerishta.in";   // <-- replace
    $mail->Password   = "LoopIN!15";  // <-- replace

    // $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    // $mail->Port = 587;

    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port       = 465;

    $mail->setFrom("support@onlinerishta.in", "Secure Login");
    $mail->addAddress($email);

    $mail->isHTML(true);
    $mail->Subject = "Your OTP Code for Onlinerishta.in";
    $mail->Body    = "
            <h2>Use this one time code to login to Onlinerishta</h2>
            <h1 style='letter-spacing:5px;'>$otp</h1>
            <p>This code will expire in 5 minutes.</p>
        ";

    $mail->send();
    echo "OK";

} catch (Exception $e) {
    error_log("OTP SEND ERROR: " . $mail->ErrorInfo);
    echo "Unable to send OTP";
}
?>