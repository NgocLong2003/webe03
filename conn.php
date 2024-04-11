<?php 

$host = "127.0.0.1";
$user = "root";
$pass = "123";
$db   = "e03";
$conn = null;

try {
  $conn = new PDO("mysql:host={$host};dbname={$db};",$user,$pass);
} catch (Exception $e) {
      echo e;
}


 ?>