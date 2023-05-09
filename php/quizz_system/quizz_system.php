<?php 
require_once '../bd.php';
include_once '../includes/main.php';
?>
<style>
    #main-box{
        margin-top: 40px;
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 50px;
    }
    #child{
      display: flex;
      flex-direction: column;
      background-color: whitesmoke;
      padding: 20px;
      border-radius: 20px;
      gap: 20px;
    }
</style>

<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (isset($_POST["reponse_question"])) {
    $choix = $_POST["reponse_question"];
    require_once '../bd.php';
    $req_point = $conn->query('SELECT id_repanse, point_repanse, id_quizz, id_question FROM repanse NATURAL JOIN question WHERE id_repanse='. $choix );
    echo "<div id='main-box'>";
    while($ligne = mysqli_fetch_assoc($req_point)){
        echo "<div id='child'>";
        echo "Vous gagné : " . $ligne["point_repanse"];
        echo '<a href="../quiz.php?id='.$ligne["id_quizz"].'"><button class="button">Valider</button></a>';
        echo '</div>';
        if (isset($_SESSION['user'])) {
          $user_id = $_SESSION['user'];
          if (!isset($_SESSION['points_gagnes'])) {
            $_SESSION['points_gagnes'] = array();
          }
          if (!in_array($ligne["id_question"] , $_SESSION['points_gagnes']) and $ligne["point_repanse"] ) {
            $rq = $conn->query("SELECT DISTINCT niveau FROM utilisateur WHERE id_utilisateur='$user_id'");
            $line  = mysqli_fetch_assoc($rq); 
            $point = $line["niveau"] + $ligne["point_repanse"];
            $rq_add = $conn->prepare("UPDATE utilisateur SET niveau='$point' WHERE id_utilisateur='$user_id'");
            $rq_add->execute();
            $_SESSION['points_gagnes'][] = $ligne["id_question"];
          }
        } 
    }
    
    echo '</div>'; 

  }
}
?>

</html>