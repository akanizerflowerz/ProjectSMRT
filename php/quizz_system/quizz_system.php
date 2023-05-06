<?php
session_start();
require_once '../bd.php'; 
// Requête SQL pour récupérer les questions et les réponses
$sql = "SELECT  ". $id_quizz." ,id_question, la_question, la_repanse , point_repanse
 FROM question NATURAL JOIN repanse
 ORDER BY RAND() LIMIT 10";

// Exécution de la requête SQL
$resultat = $conn->query($sql);
// Boucle pour afficher les questions et les réponses
while ($row = $resultat->fetch_assoc()) {
  echo "<h2>" . $row['question'] . "</h2>";
  echo "<input type='radio' name='reponse_" . $row['id'] . "' value='1'>" . $row['la_repanse'] . "<br>";
  echo "<input type='radio' name='reponse_" . $row['id'] . "' value='2'>" . $row['reponse2'] . "<br>";
  echo "<input type='radio' name='reponse_" . $row['id'] . "' value='3'>" . $row['reponse3'] . "<br>";
  echo "<input type='hidden' name='reponse_correcte_" . $row['id'] . "' value='" . $row['reponse_correcte'] . "'>";
}
// Boucle pour vérifier les réponses de l'utilisateur et afficher les résultats
$score = 0;
$resultat = $mysqli->query($sql);
while ($row = $resultat->fetch_assoc()) {
  $reponse_utilisateur = $_POST['reponse_' . $row['id']];
  $reponse_correcte = $row['reponse_correcte'];
  if ($reponse_utilisateur == $reponse_correcte) {
    $score++;
  }
}
echo "<h2>Votre score est de " . $score . "/10</h2>";
?>