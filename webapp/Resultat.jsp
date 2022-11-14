<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="js/mapdata.js"></script>
    <script src="js/countrymap.js"></script>

    <title>Resultat</title>


    <!-- Bootstrap core CSS -->
    <link href="styles/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="styles/css/dashboard.css" rel="stylesheet">
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
      <li class="nav-item active">
        <a class="nav-link" href="voter.jsp">Vote</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="Resultat.jsp">Resultat</a>
      </li>
    </ul>
    <ul class="nav justify-content-end">
   	<li class="nav-item dropdown">
       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user fa-fw"></i>
       </a>
      <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
        <a class="dropdown-item" href="#">Suggestion</a>
         <a class="dropdown-item" href="#">Communaute</a>
         <a class="dropdown-item" href="index.jsp">Deconnexion</a>
        </div>
        </li>
	</ul>
  </div>
</nav>
</header>
           <main role="main">
                            <div class="container-fluid px-4">
                        <h1 class="mt-4">GESTION ET SUIVI DES ELECTIONS</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Bienvenue</li>
                        </ol>
                    </div> 
                    <!-- <div class="row justify-content-center"> -->
                    
                    <div class="album py-5 bg-light"><div>
                        <div class="container">
                            <div class="row row-cols-2 row-cols-md-2 row-cols-sm-2 g-2">
                                <div class="col">
                                    <div class="card shadow-sm">
                                        <img class="mb-4" src="images/voter.jpg" alt="" width="100%" height="400">
                                        <div class="card-body">
                                            <p class="card-text">Un bulletin de vote est plus fort qu'une balle de fusil.</p>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="btn-group"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col">
                                    <div class="card shadow-sm">
                                        <div class="mb-4" id="map" alt="Resultat" width="100%" height="255"></div>
                                        <div class="card-body">
                                            <p class="card-text">Carte du Sénégal: Statistiques par région</p>
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="btn-group"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>

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

    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>
  </body>
</html>
    