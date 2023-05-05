<?php
// Connexion à la base de données
$mysqli = new mysqli("localhost", "nom_utilisateur", "mot_de_passe", "nom_de_la_base_de_données");
if ($mysqli -> connect_errno) {
  echo "Échec de la connexion à la base de données : " . $mysqli -> connect_error;
  exit();
}
// Requête SQL pour récupérer les questions et les réponses
$sql = "SELECT id, question, reponse1, reponse2, reponse3, reponse_correcte FROM questions ORDER BY RAND() LIMIT 10";

// Exécution de la requête SQL
$resultat = $mysqli->query($sql);
// Boucle pour afficher les questions et les réponses
while ($row = $resultat->fetch_assoc()) {
  echo "<h2>" . $row['question'] . "</h2>";
  echo "<input type='radio' name='reponse_" . $row['id'] . "' value='1'>" . $row['reponse1'] . "<br>";
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