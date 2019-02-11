<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Réservation</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style_index.css">
    <script src="script.js"></script>
  </head>
  <body>

    <header>
      <div class="header">
      <div class="bandeau">
        <div class="monCompte">
          <a href="javascript:alert('Pas encore créé');"><strong>MON COMPTE</strong></a>
          <a href="../logout.php"><strong>DECONNEXION</strong></a>
        </div>
      </div>
      <a href="../Accueil/accueil.php" id="logo"><img src="../logo.png" alt="logo IUT"></a>
      <div class="nav-bar">
        <ul>
          <li class = "dropdown">
            <a href="reservation.php">SALLE</a>
            <div class="dropdown-content">
              <a href="javascript:alert('Pas encore créé');">Salle</a>
              <a href="javascript:alert('Pas encore créé');">Salle info</a>
            </div>
          </li>
          <li class="dropdown">
            <a href="javascript:alert('Pas encore créé');">BIBLIOTHEQUE</a>
            <div class="dropdown-content">
              <a href="javascript:alert('Pas encore créé');">Reserver une salle</a>
              <a href="javascript:alert('Pas encore créé');">Reserver une salle de conférence</a>
            </div>
          </li>
          <li><a href="../EDT/edt.php">EDT</a></li>
          <li><a href="../Accueil/accueil.php">ACCUEIL</a></li>

        </ul>
      </div>
    </div>
  </header>
 
    <div class="main">
      <div id="date-hour" class="well well-sm">
        <h3 class="text-center" style="font-weight:bold;">Bienvenue dans les réservations !</h3>
        <h4 class="text-center" >Choisissez une date et une horaire <br>pour découvrir les salles disponibles.</h4>
		<form id="book-form" method='post' action='reservation.php'>
            <p class="booking-picker">Date</p>
            <input type="date" name="date">
            <label class="hour-picker">Horaires</label>
            <select class="Horaires" name="horaires">
              <option value=""> ----- Choisir ----- </option>
				<option value="8:00:00">8h-9h</option>
				<option value="9:00:00">9h-10h</option>
				<option value="10:00:00">10h-11h</option>
				<option value="11:00:00">11h-12h</option>
				<option value="12:00:00">12h-13h</option>
				<option value="13:00:00">13h-14h</option>
				<option value="14:00:00">14h-15h</option>
				<option value="15:00:00">15h-16h</option>
				<option value="16:00:00">16h-17h</option>
				<option value="17:00:00">17h-18h</option>
				<option value="18:00:00">18h-19h</option>
				<option value="19:00:00">19h-20h</option>
            </select>
			<input class="btn btn-warning" type="submit" value="Valider">
        </form>
      </div>
<?php

		// Redirige vers la page d'authentification si l'individu n'est pas authentifié
		session_start ();
		if(!isset($_SESSION['email']) AND !isset($_SESSION['pass'])){
		header('Location: connexion.php');
		exit();
		}
		
		// Inclus les différentes fonctions de base et de traitement (PDO + QUELQUES REQUETES SQL)
		include '../phpFunctions.php'; 
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	
			if (isset($_POST['horaires'])) { $horaires = $_POST['horaires']; }
			if (isset($_POST['date'])) { $date = $_POST['date']; }	
			if (!empty($horaires) || !empty($date)) {
				$_SESSION['date'] = $_POST['date'];
				$_SESSION['horaires'] = $_POST['horaires'];
				$requete = getSalle($horaires,$date);
			?>
			<div class="container">
			<div class="row">
			<?php
			while ($donnees = $requete->fetch())
			{
				$SalleID=$donnees["SalleID"];
			echo '
          <div class="col-lg-6 col-sm-12">
            <div class="well well-lg">
              <p>Salle '.$donnees["NomSalle"].'</p>
              <img class="text-center" src="images/salleInfo.jpg" alt="sInfo">
              <form action="reserver.php" method="post"><input class="btn btn-warning" type="submit" name="Reserver" value='.$SalleID.'></form>
            </div>
          </div>';
		 
			
			
			}
			}
}
?>
	 

    <footer></footer>


  </body>
</html>
