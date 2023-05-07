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
<?php
include_once 'includes/main.php' 
?>
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