<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Accueil</title>
    <link rel="stylesheet" href="accueil.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  </head>
  <body data-spy="scroll" data-target="#myScrollspy" data-offset="15">
    <div class="header">
      <div class="bandeau">
        <div class="monCompte">
          <a href="javascript:alert('Pas encore créé');"><strong>MON COMPTE</strong></a>
          <a href="../logout.php"><strong>DECONNEXION</strong></a>
        </div>
      </div>
      <a href="accueil.php" ><img src="../logo.png" id="logo" alt="logo IUT"></a>

      <div class="nav-bar" id="menu">
        <ul>
          <!---<li class = "dropdown">-->
          <li><a href="../Reservation/reservation.php">SALLE</a></li>
          <!---  <div class="dropdown-content">
              <a href="#">Salle</a>
              <a href="#">Salle info</a>
            </div>
          </li>-->
          <!--- <li class="dropdown"> -->
            <li><a href="javascript:alert('Pas encore créé');">BIBLIOTHEQUE</a></li>
            <!---
            <div class="dropdown-content">
              <a href="#">Reserver une salle</a>
              <a href="#">Reserver une salle de conférence</a>
            </div>

          </li>
        -->
          <li><a href="../EDT/edt.php">EDT</a></li>
          <li><a href="accueil.php">ACCUEIL</a></li>

        </ul>
      </div>
    </div>
    <!--- CAROUSEL -->
<div class="container-fluid" id="carousel">
  <div class="row">
    <nav class="col-sm-3" id="myScrollspy">
      <ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="205">
        <li><a href="#tendances">Tendances</a></li>
        <li><a href="#actualite">Actualite</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#BDE">BDE<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#INFO">INFO</a></li>
                <li><a href="#GEA">GEA</a></li>
                <li><a href="#CS">CS</a></li>
            </ul>
        </li>
      </ul>
    </nav>
    <div class="col-sm-9">
      <div id="tendances">
        <h1>Tendances</h1>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="item active">
              <img src="image/technology.jpg" alt="technology" style="width:100%;">
              <div class="carousel-caption">
                <h3>Technology</h3>
                <p>A découvrir</p>
              </div>
            </div>
            <div class="item">
              <img src="image/valentin.jpg" alt="valentin" style="width:100%;">
              <div class="carousel-caption">
                <h3>St Valentin</h3>
                <p>Hihi</p>
              </div>
            </div>
            <div class="item">
              <a href="https://www.youtube.com/watch?v=cVgo4AKo7vk"><img src="image/soon.jpg" alt="soon" style="width:100%;"></a>
              <div class="carousel-caption">
                <h3>Safran v3</h3>
                <p>ft. El Clorio</p>
              </div>
            </div>
          </div>
          <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
      <div id="actualite">
        <h1>Actualite</h1>
        <div class="row">
          <div class="col-sm-4">article1</div>
          <div class="col-sm-4">article2</div>
          <div class="col-sm-4">article3</div>
        </div>
      </div>
      <div class="col-sm-9" id="actuFiliere">
        <div id="INFO">
          <h1>INFO</h1>
            <p>Actu des info</p>
          </div>
          <div id="GEA">
            <h1>GEA</h1>
            <p>Actu des gea</p>
          </div>
          <div id="CS">
            <h1>CS</h1>
            <p>Actu des carrière sociale</p>
          </div>
        </div>
      </div>
      </div>
    </div>
    <div class="footer">
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  </body>
</html>
