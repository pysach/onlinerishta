<?php
	// Account details
	$apiKey = urlencode('NGM1MzRjNzk3MjMxNDg0MTMxNzEzMjY1MzU0YTcyNzc=');
	//require('./textlocal.class.php');
    //$textlocal = new Textlocal('help@onlinerishta.in', 'KAlavatiI@66');
	// Message details
	$numbers = array(919899990238);
	$sender = urlencode('600010');
	
/**
* Note: This file may contain artifacts of previous malicious infection.
* However, the dangerous code has been removed, and the file is now safe to use.
*/

 
	$numbers = implode(',', $numbers);
 
	// Prepare data for POST request
	$data = array('apikey' => $apiKey, 'numbers' => $numbers, "sender" => $sender, "message" => $message);
 
	// Send the POST request with cURL
	$ch = curl_init('https://api.textlocal.in/send/');
	curl_setopt($ch, CURLOPT_POST, true);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	$response = curl_exec($ch);
	curl_close($ch);
	
	// Process your response here
	echo $response;
?>




