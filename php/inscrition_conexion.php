<!DOCTYPE html>
<html>
<head>
	<title>Page de connexion</title>
</head>
<body>

	<h1>Connexion</h1>

	<?php
		if ($_SERVER["REQUEST_METHOD"] == "POST") {
			require_once 'bd.php';

			$email = $_POST["email"];
			$pass = $_POST["pass"];

			$stmt = $conn->prepare("SELECT * FROM utilisateur WHERE email = ? AND password = ?");
			$stmt->bind_param("ss", $email, $pass);
			$stmt->execute();
			$result = $stmt->get_result();

			if ($result->num_rows == 1) {
				// L'utilisateur est connecté, rediriger vers la page d'accueil
				header('Location: index.php');
				exit();
			} else {
				echo "<p>Adresse email ou mot de passe incorrect.</p>";
			}

			$stmt->close();
			$conn->close();
		}
	?>

	<form method="POST">
		<label for="email">Adresse email :</label><br>
		<input type="email" id="email" name="email"><br>

		<label for="pass">Mot de passe :</label><br>
		<input type="password" id="pass" name="pass"><br>

		<input type="submit" value="Se connecter">
	</form>

</body>
</html>
