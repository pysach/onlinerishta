<?php
session_start();

$apiKey = "YOUR_FAST2SMS_API_KEY_HERE";
$mobile = preg_replace('/\D/', '', $_POST['mobile']);

if (!$mobile || strlen($mobile) != 10) {
    echo "Invalid Mobile";
    exit;
}

// Generate secure OTP
$otp = random_int(100000, 999999);

// Store hashed OTP
$_SESSION['otp_hash'] = password_hash($otp, PASSWORD_DEFAULT);
$_SESSION['otp_expiry'] = time() + 300;

// Regenerate session ID (prevents session fixation)
session_regenerate_id(true);

// Fast2SMS API Payload
$data = [
    "route" => "v3",
    "sender_id" => "TXTIND",
    "message" => "Your OTP is $otp",
    "language" => "english",
    "numbers" => "91$mobile"
];

$curl = curl_init();

curl_setopt_array($curl, [
    CURLOPT_URL => "https://www.fast2sms.com/dev/bulkV2",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_POST => true,
    CURLOPT_POSTFIELDS => json_encode($data),
    CURLOPT_HTTPHEADER => [
        "authorization: $apiKey",
        "accept: */*",
        "content-type: application/json"
    ]
]);

$response = curl_exec($curl);
curl_close($curl);

if (strpos($response, '"return":true') !== false) {
    echo "OK";
} else {
    echo "SMS Failed";
}
?>