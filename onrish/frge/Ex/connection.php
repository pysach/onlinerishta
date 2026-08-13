<?php
$dsn = "mysql:host=localhost;dbname=onlineri_hta;charset=utf8mb4";
$options = [
  PDO::ATTR_EMULATE_PREPARES   => false, // turn off emulation mode for "real" prepared statements
  PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION, //turn on errors in the form of exceptions
  PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC, //make the default fetch be an associative array
];

try {
  $con = new PDO($dsn, "onlineri_hta", "H@TWr6Z?Jz7s", $options);
} catch (Exception $e) {
  error_log($e->getMessage());
  exit('Connection Error'); 
}


?>

