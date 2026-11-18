<?php
$server = "localhost";
$username = "root"; 
$password = "";     
$database = "praca_domowa";


$conn = new mysqli($server, $username, $password, $database);
if ($conn->connect_error) {
    die("Błąd połączenia: " . $conn->connect_error);
}
else{
    $komunikat = "Połaczono z bazą danych";
}   
$conn->set_charset("utf8mb4");
?>