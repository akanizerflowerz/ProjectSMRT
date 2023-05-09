<?php
session_start();
require_once 'bd.php'; 

if(isset($_SESSION['user'])){
    $user_id = $_SESSION['user'];
    
    $query = "SELECT prenom_utilisateur, niveau, email FROM utilisateur WHERE id_utilisateur='$user_id'";
    $result = mysqli_query($conn, $query);
    
    if(mysqli_num_rows($result) == 1){
        $row = mysqli_fetch_assoc($result);
        $username = $row['prenom_utilisateur'];
        $email = $row['email'];
        $niveau = $row['niveau'];
        
        // j'ai tout melanger help
        echo "
        <!DOCTYPE html>
        <html>
            <head>
                <title>Informations de l'utilisateur</title>
                <link rel='icon' href='../images/1x/logo_icon.png'>
                <link rel='stylesheet' type='text/css' href='../css/styles.css'>
                <link rel='stylesheet' type='text/css' href='../css/header.css'>
                <link rel='stylesheet' href='../css/sign-in-up.css'>
                
                <style>
                    /* Ajouter du style CSS ici */
                    body {
                        font-family: Arial, sans-serif;
                        font-size: 16px;
                        line-height: 1.6;
                        color: #333;
                        background-color: #f9f9f9;
                        margin: 0;
                        padding: 0;
                    }
                    .container {
                        max-width: 600px;
                        margin: 0 auto;
                        padding: 20px;
                        background-color: whitesmoke;
                        border-radius: 20px; 
                        border: 1px solid #ddd;
                        margin-top: 50px;
                    }
                    h1 {
                        margin-top: 0;
                        margin-bottom: 20px;
                    }
                    p {
                        margin-top: 0;
                        margin-bottom: 10px;
                    }
                    strong {
                        font-weight: bold;
                    }
                </style>
            </head>
            <body>
            <header>
                <nav class='navbar'>
                     <a href='../html/index.html'>
                        <img src='../images/1x/logo.png' alt='logo'>
                    </a>
                    <ul class='nav-list'>
                        <li class='nav-item'>
                            <a href='../html/index.html'> <span class='souligner'> ACCEUIL</span></a>
                         </li>
                        <li class='nav-item'>
                            <a href='../html/smrt.html'> <span class='souligner'> SMRT</span></a>
                        </li>
                        <li class='nav-item'>
                             <a href='../html/quizz.html'> <span class='souligner'> QUIZZ</span></a>
                            </li>
        
                    </ul>
                    <a href='../php/profile.php' class='account'><img src='../images/account-logo-no-back.png' alt='Logo Account'></a>
                </nav>
            </header>
                <div class='container'>
                    <h1>Informations de l'utilisateur</h1>
                    <p><strong>Nom d'utilisateur:</strong> $username</p>
                    <p><strong>Adresse e-mail:</strong> $email</p>
                    <p><strong>Niveau:</strong> $niveau</p>
                    <form action='../php/deconnexion.php' method='POST'>
                        <button class='button-long' type='submit'>Déconnexion</button>
                    </form>
                </div>
            </body>
        </html>";
        
    }
    else{
        $_SESSION['message'] = "Utilisateur non trouvé.";
        header('Location: ../html/signin.html');
    }
}
else{
    // L'utilisateur n'est pas connecté
    $_SESSION['message'] = "Vous n'êtes pas connecté.";
    header('Location: ../html/signin.html');
}
// Fermer la connexion 
mysqli_close($conn);
?>

