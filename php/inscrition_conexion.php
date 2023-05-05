<!DOCTYPE html>
<html>
<head>
	<title>Page de connexion</title>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
    <link rel="stylesheet" type="text/css" href="../css/header.css">
    <link rel="stylesheet" href="../css/sign-in-up.css">
</head>
<body>

	<h1>Connexion</h1>
    <h2>Votre Inscription Ces Bien De Derouler ,IL NE RESTE PLUS QU'A SE CONNECETR !!</h2>

	<?php
		session_start();
		if ($_SERVER["REQUEST_METHOD"] == "POST") {
			require_once 'bd.php';

			$email = $_POST["email"];
			$pass = $_POST["pass"];

			$stmt = $conn->prepare("SELECT * FROM utilisateur WHERE email = ? AND password = ?");
			$stmt->bind_param("ss", $email, $pass);
			$stmt->execute();
			$result = $stmt->get_result();

			if ($result->num_rows == 1) {
				// L'utilisateur est connecté, initialiser la session et rediriger vers la page de quizz
				$_SESSION['user'] = $email;
				header('Location: ../html/quizz.html');
				exit();
			} else { 
				echo "<p>Adresse email ou mot de passe incorrect.</p>";
			}

			$stmt->close();
			$conn->close();
		}
	?>
    <div class="main-container">
    <div class="sub-container">
    <div id="sign-up">

	<form method="POST">
		<label for="email">Adresse email :</label><br>
		<input type="email" id="email" name="email"><br>

		<label for="pass">Mot de passe :</label><br>
		<input type="password" id="pass" name="pass"><br>

		<input type="submit" value="Se connecter" class="button">
	</form>
    </div>
    </div>
    </div>
    


</body>
</html>
