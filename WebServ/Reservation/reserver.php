<!DOCTYPE html>
<html lang="en" dir="ltr">

  <head>
    <meta charset="utf-8">
    <title></title>
  </head>


  <body>
   
  <?php
  
  include '../phpFunctions.php';
  session_start ();
		if(!isset($_SESSION['email']) AND !isset($_SESSION['pass'])){
		header('Location: connexion.php');
		exit();
		}
  $SalleID =  $_POST['Reserver'];
  $horaires = $_SESSION['horaires'];
  $email = $_SESSION['email'];
  $date = $_SESSION['date'];
  Reservation($horaires,$date,$SalleID,$email);
  echo("Reservation de la salle $SalleID effectué");
  ?>
  </body>
</html>