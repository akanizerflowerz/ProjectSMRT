<?php
session_start();
require_once 'bd.php'; 

if (isset($_POST['email']) && isset($_POST['pass'])) {
    // récupérer les données du formulaire
    $email = $_POST['email'];
    $pass = $_POST['pass'];

    // requête MySQL pour vérifier si l'utilisateur existe dans la base de données
    $query = "SELECT * FROM utilisateur WHERE email='$email' AND password='$pass'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) == 1) {
        // l'utilisateur existe dans la base de données
        $row = mysqli_fetch_assoc($result);
        $_SESSION['user'] = $row['id_utilisateur']; // définit $_SESSION['user'] comme l'ID de l'utilisateur
        header('Location: ../html/quizz.html');
    } else {
        // l'utilisateur n'existe pas dans la base de données
        $_SESSION['message'] = "Adresse e-mail ou mot de passe incorrect!";
    }
}
