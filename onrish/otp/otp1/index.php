<?php
session_start([
    'cookie_lifetime' => 300,
    'cookie_httponly' => true,
    'cookie_secure'   => false,
    'use_strict_mode' => true
]);

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
require 'PHPMailer/src/Exception.php';

if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $email = filter_var(trim($_POST['email']), FILTER_VALIDATE_EMAIL);
    if (!$email) die("Invalid Email Address");

    $otp = random_int(100000, 999999);

    $_SESSION['otp']        = password_hash($otp, PASSWORD_DEFAULT);
    $_SESSION['otp_email']  = $email;
    $_SESSION['otp_expiry'] = time() + 300;

    $mail = new PHPMailer(true);

    try {
        // FIXED SMTP SETTINGS
        $mail->isSMTP();
        $mail->Host       = 'mail.onlinerishta.in';          // FIXED
        $mail->SMTPAuth   = true;
        $mail->Username   = 'support@onlinerishta.in';       // FIXED
        $mail->Password   = 'LoopIN!15'; // FIXED
        /*$mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS; // recommended
        $mail->Port       = 465;*/
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
        $mail->Port       = 587;

        $mail->setFrom('support@onlinerishta.in', 'Secure OTP Login');
        $mail->addAddress($email);

        $mail->isHTML(true);
        $mail->Subject = "Your OTP Code";
        $mail->Body    = "
            <h2>Your OTP Code</h2>
            <h1 style='letter-spacing:5px;'>$otp</h1>
            <p>This OTP will expire in 5 minutes.</p>
        ";

        $mail->send();

        session_regenerate_id(true);

        header("Location: verify_otp.php");
        exit;

    } catch (Exception $e) {
        error_log("Mailer Error: " . $mail->ErrorInfo);
        echo "Unable to send OTP. Please try again later.";
    }
}
?>
<!DOCTYPE html>
<html>
<head>
<title>OTP Login</title>
</head>
<body>
<h2>Email Login (OTP)</h2>

<form method="post">
    <input type="email" name="email" placeholder="Enter Email" required style="padding:10px;width:300px;">
    <button type="submit" style="padding:10px 20px;">Send OTP</button>
</form>

</body>
</html>