<?php
session_start(); 
require_once 'bd.php';
if(!isset($_SESSION['user'])){
    header('Location:../html/signin.html');
    die();
}

// Requête SQL pour sélectionner les quiz de la catégorie sport
$req = $conn->prepare('SELECT * FROM quizz WHERE catégorie = "MATHEMATIQUE"');
$req->execute();


$req->store_result();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>quizz_SPORT</title>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
    <link rel="stylesheet" type="text/css" href="../css/header.css">
    <link rel="stylesheet" href="../css/sign-in-up.css">
    <link rel="stylesheet" href="../css/quizz.css">
</head>
<body>
<header>
<nav class="navbar">
    <a href="../html/index.html">
        <img src="../images/1x/logo.png" alt="logo">
    </a>
    <ul class="nav-list">
        <li class="nav-item">
            <a href="../html/index.html"> <span class="souligner"> ACCEUIL</span></a>
        </li>
        <li class="nav-item">
            <a href="../html/smrt.html"> <span class="souligner"> SMRT</span></a>
        </li>
        <li class="nav-item">
            <a href="../html/quizz.html"> <span class="souligner"> QUIZZ</span></a>
        </li>

    </ul>
    <a href="../php/profile.php" class="account"><img src="../images/account-logo-no-back.png" alt="Logo Account"></a>
</nav>
</header>
<div id="main-quizz-container">
<?php
if ($req->num_rows > 0) {
    $req->bind_result($id_quizz, $nom_quizz, $catégorie);
    while ($req->fetch()) {
        // Affichage des informations du quiz
        echo ' 
        <div id="quizz-container2">
            <a href="quiz.php?id='.$id_quizz.'"> <button class="button">'.$nom_quizz.'</button></a>
        </div>
        ';
    }
}

$req->close();
?>
</div>
</div>
</body>
</html>