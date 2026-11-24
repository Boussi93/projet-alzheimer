<?php
// Paramètres de connexion 
$host     = "localhost";
$dbname   = 'projettuteure';
$user     = "root";
$password = "";


// Connexion à la base de données MySQL
$conn = mysqli_connect($host, $user, $password, $dbname);
mysqli_set_charset($conn, "utf8");

// Vérification de la connexion 
if ($conn === false) {
    exit("La connexion a échoué : " . mysqli_connect_error());
}
?>