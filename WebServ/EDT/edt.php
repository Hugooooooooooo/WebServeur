<!DOCTYPE html>
<html lang="en" dir="ltr">

  <head>
    <meta charset="utf-8">
    <title></title>
    <link type="text/css" rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    
  </head>


  <body>
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
            <a href="../reservation/reservation.php">SALLE</a>
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
          <li><a href="edt.php">EDT</a></li>
          <li><a href="../Accueil/accueil.php">ACCUEIL</a></li>

        </ul>
      </div>
    </div>
    <div class="page">
     
  <div class ="window" >
	<?php
	$regExpMatch = '/SUMMARY:(.*)/';
	$regExpDate = '/DTSTART:(.*)/';
	$regExpDesc = '/DESCRIPTION:(.*)/';
	$calendrier = file_get_contents('http://planning.parisdescartes.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?data=8241fc3873200214e839b774409b6b48e0fa50826f0818af2370d544632bbb83906f45af276f59aec18424f8595af9f960ebae19a89fba7d');
	 $n = preg_match_all($regExpMatch, $calendrier, $matchTableau, PREG_PATTERN_ORDER);
	preg_match_all($regExpDate, $calendrier, $dateTableau, PREG_PATTERN_ORDER);
	preg_match_all($regExpDesc, $calendrier, $descTableau, PREG_PATTERN_ORDER);
	
	 
	for ($j=0 ; $j < $n ; ++$j)
	{	
	
	
	// Récupération des données
	$annee = substr($dateTableau[0][$j], 8, 4);
	$mois = substr($dateTableau[0][$j], 12, 2);
	$jour = substr($dateTableau[0][$j], 14, 2);
	$heure = substr($dateTableau[0][$j], 17, 2);
	$min = substr($dateTableau[0][$j], 19, 2);
	$cours = substr($matchTableau[0][$j], 8);
	$desc = substr($descTableau[0][$j], 12);// Mise en forme
	$date = $jour.'/'.$mois.'/'.$annee;
	$horaire = $heure.'h'.$min;
	$prof = explode('\n',$desc);
	
	//list($compet, $rang, $tv) = explode(" – ", $desc);
	// Affichage

	
	?>	
	<div class = "table">
		<tr><div class = "tablemini">
  			<?php echo $date ?><br>
			<?php echo $horaire ?><br>
		</div>	
			<?php echo $cours ?><br>
			<?php echo $prof[2] ?><br>
		</tr>
	
	</div>
	
	<?php 
		echo "<br>";
	} 
	
	
	?>
	
	</div>

    </div>
    <div class="footer">
	</div>
   
  </body>
</html>