<?php
session_start([
    'cookie_httponly' => true,
    'cookie_secure'   => true, // requires HTTPS
    'use_strict_mode' => true
]);

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Safely fetch OTP input
    $enteredOtp = isset($_POST['otp']) ? trim($_POST['otp']) : '';

    if ($enteredOtp === '') {
        die("No OTP entered. Please try again.");
    }

    // Now continue with your OTP verification logic...
    if (!isset($_SESSION['otp'], $_SESSION['otp_email'], $_SESSION['otp_expiry'])) {
        die("No OTP session found. Please request a new OTP.");
    }

    if (time() > $_SESSION['otp_expiry']) {
        session_unset();
        die("OTP expired. Please request a new one.");
    }

    if (password_verify($enteredOtp, $_SESSION['otp'])) {
        session_regenerate_id(true);
        unset($_SESSION['otp'], $_SESSION['otp_expiry']);
        echo "✅ OTP verified successfully.";
    } else {
        echo "❌ Invalid OTP.";
    }
}
?>
<!DOCTYPE html>
<html>
<head><title>Verify OTP</title></head>
<body>

<h2>Verify OTP</h2>

<form method="post">
    <input type="text" name="otp" maxlength="6" placeholder="Enter OTP" required style="padding:10px;width:150px;">
    <button type="submit" style="padding:10px 20px;">Verify</button>
</form>

</body>
</html>