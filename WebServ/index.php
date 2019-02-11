<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="index.css"/>
    <title>Connexion</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  </head>
  <body>
    <div class="sidenav">
         <div class="login-main-text">
            <h2>Bienvenue,</h2>
            <p>Connectez-vous au site universitaire de l'IUT Paris Descartes <br>
            pour accéder à votre emplois du temps, à l'actualité, réserver une salle...</p>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               <form action="index.php" method="post">
                 <img src="logo.png" alt="logo iut">
                  <div class="form-group">
                     <label>Adresse mail</label>
                     <input type="email" class="form-control" id="email" name="email" placeholder="exemple@gmail.com">
                  </div>
                  <div class="form-group">
                     <label>Mot de passe</label>
                     <input type="password" class="form-control" id="pass" name="pass" placeholder="Votre mot de passe">
                  </div>
                  <button type="submit" class="btn btn-black">Login</button>
               </form>
            </div>
         </div>
      </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	
	
	<?php 
	include 'phpFunctions.php';
	if (session_status() == PHP_SESSION_ACTIVE) {
		header('Location: Accueil/accueil.php');
		exit();
	}
	function passwordtest(){
		$email = $_POST['email'];
		$pass = $_POST['pass'];

		$bdd = getDatabaseConnexion();	
		$req = $bdd->prepare('SELECT email, pass FROM personne WHERE email = :email');
		$req->execute(array(
			'email' => $email));
		$resultat = $req->fetch();


		// Comparaison du pass envoyé via le formulaire avec la base
		$isPasswordCorrect = $_POST['pass'] == $resultat['pass'];
		if (!$resultat)
		{
			echo 'Mauvais identifiant ou mot de passe !';
		}
		else
		{
			if ($isPasswordCorrect) {
				session_start();
				$_SESSION['email'] = $resultat['email'];
				$_SESSION['pass'] = $resultat['pass'];
				header('Location: Accueil/accueil.php');
				exit();
				
			}
			else {
				echo 'Mauvais identifiant ou mot de passe !';
			}
		}

		}
		

			
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
			$email = $_POST["email"];
			$pass = $_POST["pass"];
			if (empty($email) || empty($email)) {
				echo 'Veuillez rentrer un pseudo et un mot de pass';
			} else {			
				passwordtest($email, $pass);
			}
		}




?>
  </body>
</html>
