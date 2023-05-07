<?php
// Récupérer l'ID à partir de l'URL
$id = $_GET['id'];

// Exécuter une requête à la base de données pour récupérer les informations correspondantes à l'ID
// Ici, nous supposons que la table "quiz" contient les informations sur les quiz en ligne
require_once 'bd.php';
include_once 'includes/header.php';

$req = $conn->query('SELECT id_quizz, nom_quizz FROM quizz WHERE id_quizz ='. $id );
if ($req->num_rows > 0) {
    echo "Résultats trouvés : " . $req->num_rows;
    echo "<select name='nom'>";
    while ($row = $req->fetch_assoc()) {
        echo "<option value='" . $row['id_quizz'] . "'>" . $row['nom_quizz'] . "</option>";
    }
    echo "</select>";
} else {
    // Gestion de l'erreur de la requête SQL
    echo 'Erreur de requête SQL : '.$conn->error;
}

$req2 = $conn->query('SELECT DISTINCT id_question, la_question FROM quizz NATURAL JOIN question NATURAL JOIN repanse WHERE id_quizz = 2' );
if ($req2->num_rows > 0) {
    echo "Résultats trouvés : " . $req->num_rows;
    echo "<select name='nom'>";
    while ($row = $req->fetch_assoc()) {
        echo "<option value='" . $row['id_question'] . "'>" . $row['la_question'] . "</option>";
    }
    echo "</select>";
} else {
    // Gestion de l'erreur de la requête SQL
    echo 'Erreur de requête SQL : '.$conn->error;
}
?>