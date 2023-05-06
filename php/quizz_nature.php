<?php
session_start(); 
require_once 'bd.php';
if(!isset($_SESSION['user'])){
    header('Location:../html/signin.html');
    die();
}

// Requête SQL pour sélectionner les quiz de la catégorie sport
$req = $conn->prepare('SELECT * FROM quizz WHERE catégorie = "NATURE ET ANIMEAUX"');
$req->execute();


$req->store_result();
?>
<!DOCTYPE html>
<html lang="fr">
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
<?php
include_once 'includes/header.php';
?>
<div id="main-quizz-container">
<?php
if ($req->num_rows > 0) {
    $req->bind_result($id_quizz, $nom_quizz, $catégorie);
    while ($req->fetch()) {
        // Affichage des informations du quiz
        echo ' 
        <div id="quizz-container2">
            <a href="pages_quizz/'.$id_quizz.'.php"> <button class="button">'.$nom_quizz.'</button></a>
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