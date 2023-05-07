<?php
// Récupérer l'ID à partir de l'URL
$id = $_GET['id'];

// Exécuter une requête à la base de données pour récupérer les informations correspondantes à l'ID
// Ici, nous supposons que la table "quiz" contient les informations sur les quiz en ligne
require_once 'bd.php';
include_once 'includes/main.php';
?>
<body>
<style>
    #main-ques-container{
        margin-top: 40px;
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 20px;
    }
    h3{
        margin: 15px;
    }
    .quizz-section{ 
        display: flex;
        flex-direction: column;
    }
    .selector{
        background-color: whitesmoke;
        border-radius: 20px;
        min-width: 520px;
        max-width: 820px;
        padding: 10px;  
    }

    .button-valide{
        background-color: #17162E;
        border: none;
        border-radius: 25px;
        padding: 5px 15px 5px 15px;
        margin: auto;
        transition: all 0.3s ease-in-out;
        width: 40px;

    }
    .button-valide:hover{
        transform: scale(1.05);
    }
    .button-valide:active{
        transform: scale(0.95);
        transform: rotate(1turn);
    }
    form{
 
        margin-right: 20px;
        display: flex;
        flex-direction: row;
    }
    .radio{
        accent-color: #17162E;
    }

</style>
<div id="main-ques-container">
<?php
$req2 = $conn->query('SELECT DISTINCT id_question, la_question FROM quizz NATURAL JOIN question NATURAL JOIN repanse WHERE id_quizz ='. $id );
while ($ligne = mysqli_fetch_assoc($req2)) {
    echo '<div id="'.$ligne['id_question'].'"class="selector">';
    echo  '<h3>' . $ligne['la_question'] . '</h3>';
    $req3 = $conn->query('SELECT DISTINCT la_repanse, point_repanse, id_question , id_repanse FROM question NATURAL JOIN repanse WHERE id_question ='. $ligne['id_question'] );
    echo '<form  action="quizz_system/quizz_system.php" method="post">';
    echo '<div class="quizz-section">';
    while ($raw = mysqli_fetch_assoc($req3)){
        
        echo "<label><input type='radio' class='radio' ' value='".$raw['id_repanse']."' name='reponse_question'> ". $raw['la_repanse'] ."</label>";

    }
    echo '</div>';
    echo '<input type="image"  src="../images/ok_icon.png" value="'. $ligne['id_question'] .'" class="button-valide" alt="Submit" >';
    echo '</form>';
    echo '</div>';

}

var_dump($_POST);
?>
</div>




<?php
mysqli_close($conn);
?>

</body>
</html>