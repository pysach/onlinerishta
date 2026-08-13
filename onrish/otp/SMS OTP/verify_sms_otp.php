<?php
session_start();

$otp = $_POST['otp'] ?? '';

if (!isset($_SESSION['otp_hash'])) {
    echo "No OTP sent";
    exit;
}

if (time() > $_SESSION['otp_expiry']) {
    echo "OTP Expired";
    exit;
}

if (password_verify($otp, $_SESSION['otp_hash'])) {
    echo "VERIFIED";
    unset($_SESSION['otp_hash']);
    exit;
}

echo "Invalid OTP";
?>