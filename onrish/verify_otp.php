<?php
session_start();

if (!isset($_POST['otp'])) {
    echo "Invalid request";
    exit;
}

$otp = trim($_POST['otp']);

if (strlen($otp) !== 6) {
    echo "Invalid OTP";
    exit;
}

// ---------------- Check if OTP exists ----------------
if (!isset($_SESSION['otp_hash']) || !isset($_SESSION['otp_expiry'])) {
    echo "OTP not generated";
    exit;
}

// ---------------- Check expiry ----------------
if (time() > $_SESSION['otp_expiry']) {
    unset($_SESSION['otp_hash']);
    echo "OTP expired";
    exit;
}

// ---------------- Match hashed OTP ----------------
if (password_verify($otp, $_SESSION['otp_hash'])) {

    // Destroy OTP so it cannot be reused
    unset($_SESSION['otp_hash']);

    // Mark user as logged in
    $_SESSION['logged_in'] = true;
    $_SESSION['logged_email'] = $_SESSION['otp_email'];

    echo "OK";
} else {
    echo "Incorrect OTP";
}
?>