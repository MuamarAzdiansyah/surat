<?php
$servername = 'localhost'; // Ganti dengan nama host database Anda jika bukan localhost
$username = 'forkum'; // Username database
$password = 'forkum@2024*'; // Password database
$dbname = 'suratdb'; // Nama database

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>