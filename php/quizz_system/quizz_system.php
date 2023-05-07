<?php 
require_once '../bd.php';
include_once '../includes/main.php';
?>

  <?php
if (isset($_POST[" " . $id_rep ." "])) {
    // Le formulaire a été soumis
    echo $_POST[" " . $id_rep ." "];
    
    // Traitez les données POST comme vous le feriez normalement
  }

?>
</html>