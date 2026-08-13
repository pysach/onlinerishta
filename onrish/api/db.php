<?php
$conn = new mysqli("localhost","DB_USER","DB_PASS","DB_NAME");
if ($conn->connect_error) die("DB Error");
?>