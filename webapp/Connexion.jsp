<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<meta charset="UTF-8">
		<title>Connexion page</title>
        <link href="styles/css/styles.css" rel="stylesheet" />
        <script src="styles/bootstrap/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Bienvenue Connectez vous</h3></div>
                                    <div class="card-body">
                                        <form action="<%= request.getContextPath()%>/LoginServlet" method="post"> 
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" name="cni" type="text" placeholder="Enter Votre Cni..." />
                                                <label for="inputcni">Enter Votre Cni...</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" name="password" id="inputPassword" type="password" placeholder="Votre mot de passe" />
                                                <label for="inputPassword">Votre mot de passe</label>
                                            </div>
                                            <div class="form-check mb-3">
                                                <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
                                                <label class="form-check-label" for="inputRememberPassword">Se Souvenir de Moi</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="password.html">mot de passe oublie ?</a>
                                                <input type="submit" value="Login" class="btn btn-primary"/>                
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="Register.jsp">Besoin d'un compte'? Creer un compte !</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; gestion election 2022</div>
                            <div>
                                <a href="index.html">gestion</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="styles/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>