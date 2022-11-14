<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, java.text.*"  %>  
   <%@ page import="java.sql.*" %>
   <%@ page import="javax.servlet.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Gestion des Elections</title>

    <!-- Bootstrap core CSS -->
    <link href="styles/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="styles/css/carousel.css" rel="stylesheet">
  </head>
  <body>

    <header>
<nav class="navbar navbar-expand-md fixed-top  navbar-dark bg-dark" style="background-color: #e3f2fd;">
  <a class="navbar-brand" href="#">VotelApp</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Accueil <span class="sr-only">(current)</span></a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    <ul class="nav justify-content-end">
  	  <li class="nav-item">
    	<a class="nav-link active" href="Connexion.jsp">Connexion</a>
  	  </li>
  	  <li class="nav-item">
         <a class="nav-link" href="Register.jsp">Inscription</a>
  	  </li>
	</ul>
  </div>
</nav>
    </header>

    <main role="main">

      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide" src="images/politique.jpg" alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>Présidentielle 2019</h1>
                <p>Elections Présidentielles du 24 février 2019</p>
                <p><a class="btn btn-lg btn-primary" href="Connexion.jsp" role="button">Connexion</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide" src="images/vote.jpg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption">
                <h1>Jour de vote</h1>
                <p>Un bulletin est plus fort qu'une balle de fusil</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Voir Plus</a></p>
              </div>
            </div> 
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="images/chiffre1.jpg" alt="Third slide">
          </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>


      <!-- Marketing messaging and featurettes
      ================================================== -->
      <!-- Wrap the rest of the page in another container to center all the content. -->

      <div class="container marketing">

        <!-- Three columns of text below the carousel -->
        <div class="row">
          <div class="col-lg-4">
            <img class="rounded-circle" src="images/macky1.jpeg" alt="Generic placeholder image" width="140" height="140">
            <h2>Macky Sall</h2>
            <p>Le Chef de l’Etat Macky Sall a lancé officiellement la campagne pour le parrainage de Benno Bokk Yaakaar (Bby), hier, au centre Abdou Diouf à Diamniadio...</p>
            <p><a class="btn btn-secondary" href="#" role="button">voir details &raquo;</a></p>
          </div><!-- /.col-lg-2 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="images/idyseck.jpeg" alt="Generic placeholder image" width="140" height="140">
            <h2>Idrissa Seck</h2>
            <p>Notre pays va boucler ses six décennies d’existence. Il a fait des progrès importants sur le plan social et économique. Sans que nos dirigeants successifs aient démérité...</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="images/sonko.jpeg" alt="Generic placeholder image" width="140" height="140">
            <h2>Ousmane Sonko</h2>
            <p>De la production à la commercialisation, en passant par la transformation, le candidat Ousmane Sonko a présenté son programme. Lequel entend également conquérir...</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
        <div class="row">
        <div class="col-lg-4">
            <img class="rounded-circle" src="images/madickeniang.jpeg" alt="Generic placeholder image" width="140" height="140">
            <h2>Madicke Niang</h2>
            <p>Après avoir soutenu activement à l’intérieur du Parti le choix de Karim Wade comme candidat et assuré au mieux sa défense pour lever les obstacles...</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="images/issasall.jpeg" alt="Generic placeholder image" width="140" height="140">
            <h2>Issa Sall</h2>
            <p>Pur 100, c’est le nom que le candidat à l’élection présidentielle El Hadji Issa Sall a donné à son programme..</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
        </div>

        <hr class="featurette-divider">

        <!-- /END THE FEATURETTES -->

      </div><!-- /.container -->


      <!-- FOOTER -->
      <footer class="container">
        <p class="float-right"><a href="#">Back to top</a></p>
        <p>&copy; 2012-2021 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
    </main>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script>window.jQuery || document.write('<script src="styles/bootstrap/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="styles/bootstrap/js/vendor/popper.min.js"></script>
    <script src="styles/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="styles/bootstrap/js/vendor/holder.min.js"></script>
  </body>
</html>
    