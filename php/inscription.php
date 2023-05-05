<?php
require_once 'bd.php'; 

$pseudo = $_POST["pseudo"];
$email = $_POST["email"];
$pass = $_POST["pass"];

// Vérification si l'utilisateur existe déjà
$stmt = $conn->prepare("SELECT * FROM utilisateur WHERE email = ?");
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    echo "L'utilisateur avec cet e-mail existe déjà.";
    exit();
}

// Insertion de l'utilisateur dans la base de données
$stmt = $conn->prepare("INSERT INTO utilisateur (prenom_utilisateur, email, password) VALUES (?, ?, ?)");
$stmt->bind_param("sss", $pseudo, $email, $pass);

if ($stmt->execute()) {
    echo "Inscription réussie, vous pouvez maintenant vous connecter.";
    header('Location: ../inscription.php');
} else {
    echo "Erreur: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>

<?php
require_once 'bd.php'; 

$pseudo = $_POST["pseudo"];
$email = $_POST["email"];
$pass = $_POST["pass"];

// Vérification si l'utilisateur existe déjà
$stmt = $conn->prepare("SELECT * FROM utilisateur WHERE email = ?");
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    echo "L'utilisateur avec cet e-mail existe déjà.";
    exit();
}

// Insertion de l'utilisateur dans la base de données
$stmt = $conn->prepare("INSERT INTO utilisateur (prenom_utilisateur, email, password) VALUES (?, ?, ?)");
$stmt->bind_param("sss", $pseudo, $email, $pass);

if ($stmt->execute()) {
    echo "Inscription réussie, vous pouvez maintenant vous connecter.";
    header('location:../php/inscrition_conexion.php');
} else {
    echo "Erreur: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
