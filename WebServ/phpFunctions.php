<?php 
	 
function getDatabaseConnexion() {
			try {
			    $user = "root2";
			    $pass= "";
				$pdo = new PDO('mysql:host=localhost;dbname=mystudentlife', $user, $pass);
				 $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				return $pdo;
				
			} catch (PDOException $e) {
			    print "Erreur !: " . $e->getMessage() . "<br/>";
			    die();
			}
		}


// Cherche l'id de la personne en fonction de son mail, peut recevoir soit l'email de la session soit $email
function getPersonneID($Email) {
			$con = getDatabaseConnexion();
			$requete2 = $con->prepare("SELECT PersonneID FROM Personne where email=:email");
			$requete2->execute(array(
				'email' =>$_SESSION["email"]
				));
			$donnees2=$requete2->fetch();
			$PersonneID = $donnees2["PersonneID"];
			return $PersonneID;
		}
function getSalle($horaires,$date){
	$con = getDatabaseConnexion();
	$requete = $con->prepare("SELECT * FROM SALLES where SALLEID not in(Select SalleID from Reservation where Date_res='$date' and HeureDebut='$horaires')	");
			$requete->execute(array(
				'date' => $date,
				'horaires' => $horaires
			));
	return $requete;
	}

function Reservation($horaires,$date,$SalleID,$email){
	$con = getDatabaseConnexion();
	$horaires2 = $horaires;
	$date2=$date;
	$PersonneID = getPersonneID($email);
	$requete = $con->prepare("INSERT INTO Reservation(SalleID,Date_Res,HeureDebut,PersonneID) VALUES ('$SalleID','$date2','$horaires2','$PersonneID')");
	$requete->execute(array(
		'date2' => $date2,
		'horaires2' => $horaires2,
		'PersonneID' => $PersonneID,
		'SalleID' => $SalleID
		));
	
}
?>