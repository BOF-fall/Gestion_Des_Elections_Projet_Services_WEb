<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.*, java.text.*"  %>  
   <%@ page import="java.sql.*" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta charset="UTF-8">
		<title>COMPTE</title>
        <link href="styles/css/styles.css" rel="stylesheet" />
        <script src="styles/bootstrap/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-primary">
   <div id="layoutAuthentication">
      <div id="layoutAuthentication_content">
        <main>
           <div class="container">
               <div class="row justify-content-center">
                     <div class="col-lg-7">
                         <div class="card shadow-lg border-0 rounded-lg mt-5">
                              <div class="card-header"><h3 class="text-center font-weight-light my-4">Creation Compte</h3></div>
                                 <div class="card-body">
                                     <form action="<%= request.getContextPath() %>/RegisterServlet" method="post">
                                        <div class="row mb-3">
                                              <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" name="prenom" id="inputPrenom" type="text" placeholder="Enter Votre Prenom" />
                                                        <label for="inputFirstName">PRENOM</label>
                                                    </div>
                                               </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" name="nom" id="inputNom" type="text" placeholder="Enter Votre Nom" />
                                                        <label for="inputLastName">NOM</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" name="cni" id="inputEmail" type="text" placeholder="Entrez votre cni" />
                                                <label for="inputEmail">Numero cni</label>
                                            </div>
<div class="row mb-3">
  <div class="col-md-6">
  <div class="form-floating mb-3 mb-md-0">
	<%
	   try{
       
            Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/election","tech","tech2021");
        	String sql = "select * from region;";
            PreparedStatement stmt = con.prepareStatement(sql);
        	ResultSet rs = stmt.executeQuery();
        	if(rs.next()==false){
                out.println("No Records in the table");
           }else
                                {%>
        		<select id="inputState" class="form-select form-control"  name="region" required onChange="getVille(this.value);">
        		    <option value="" selected>--Region--</option>
                                <%
            				    do{%>
           
            		<option value="<%= rs.getString(1)%>"><%= rs.getString(2)%></option>
           
            					<%}while(rs.next());
        						
        						}
       
							    }
		catch(Exception e){
    	 e.getStackTrace();}
							   %>
				</select>
 </div>
  </div>
  <div class="col-md-6">
  <div class="form-floating mb-3 mb-md-0">
	<%
	   try{
       
            Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/election","tech","tech2021");
        	String sql = "select * from departement;";
            PreparedStatement stmt = con.prepareStatement(sql);
        	ResultSet rs = stmt.executeQuery();
        	if(rs.next()==false){
                out.println("No Records in the table");
           }else
                                {%>
        		<select id="inputState" class="form-select form-control"  name="dep" required onChange="getVille(this.value);">
        		    <option value="" selected>--Departement--</option>
                                <%
            				    do{%>
           
            		<option value="<%= rs.getString(1)%>"><%= rs.getString(2)%></option>
           
            					<%}while(rs.next());
        						
        						}
       
							    }
		catch(Exception e){
    	 e.getStackTrace();}
							   %>
				</select>
  </div>
  </div>
  </div>
  <div class="row mb-3">
  <div class="col-md-6">
    <div class="form-floating mb-3 mb-md-0">
	<%
	   try{
       
            Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/election","tech","tech2021");
        	String sql = "select * from communes;";
            PreparedStatement stmt = con.prepareStatement(sql);
        	ResultSet rs = stmt.executeQuery();
        	if(rs.next()==false){
                out.println("No Records in the table");
           }else
                                {%>
        		<select id="inputState" class="form-select form-control"  name="com" required onChange="getVille(this.value);">
        		    <option value="" selected>--Communes--</option>
                                <%
            				    do{%>
           
            		<option value="<%= rs.getString(1)%>"><%= rs.getString(2)%></option>
           
            					<%}while(rs.next());
        						
        						}
       
							    }
		catch(Exception e){
    	 e.getStackTrace();}
							   %>
				</select>
      </div>
    </div>
  <div class="col-md-6">
    <div class="form-floating mb-3 mb-md-0">
	<%
	   try{
       
            Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/election","tech","tech2021");
        	String sql = "select * from lieux;";
            PreparedStatement stmt = con.prepareStatement(sql);
        	ResultSet rs = stmt.executeQuery();
        	if(rs.next()==false){
                out.println("No Records in the table");
           }else
                                {%>
        		<select id="inputState" class="form-select form-control"  name="lieuvote" required onChange="getVille(this.value);">
        		    <option value="" selected>--Lieu-de-Vote--</option>
                                <%
            				    do{%>
           
            		<option value="<%= rs.getString(1)%>"><%= rs.getString(2)%></option>
           
            					<%}while(rs.next());
        						
        						}
       
							    }
		catch(Exception e){
    	 e.getStackTrace();}
							   %>
				</select>
      </div>
    </div>
</div>       
<div class="row mb-3">
  <div class="col-md-6">
    <div class="form-floating mb-3 mb-md-0">
	<%
	   try{
       
            Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/election","tech","tech2021");
        	String sql = "select * from bvote;";
            PreparedStatement stmt = con.prepareStatement(sql);
        	ResultSet rs = stmt.executeQuery();
        	if(rs.next()==false){
                out.println("No Records in the table");
           }else
                                {%>
        		<select id="inputState" class="form-select form-control"  name="bvote" required onChange="getVille(this.value);">
        		    <option value="" selected>--Bureau de Vote--</option>
                                <%
            				    do{%>
           
            		<option value="<%= rs.getString(1)%>"><%= rs.getString(2)%></option>
           
            					<%}while(rs.next());
        						
        						}
       
							    }
		catch(Exception e){
    	 e.getStackTrace();}
							   %>
				</select>
      </div>
    </div>
    <div class="col-md-6">
        <div class="form-floating mb-3 mb-md-0">
            <input class="form-control" id="inputPasswordConfirm" name="datenaiss" type="Date" placeholder="date de naissance" />
            <label for="inputPasswordConfirm">DATE DE NAISSANCE</label>
        </div>
    </div>
</div>                                     
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPassword" name="password" type="password" placeholder="Creer un mot de passe" />
                                                        <label for="inputPassword">Votre mot de passe</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPasswordConfirm" name="password" type="password" placeholder="Confirmer mot de passe" />
                                                        <label for="inputPasswordConfirm">Confirmer mot de passe</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"> 
                                                <input type="submit" value="s'inscrire" class="btn btn-primary  btn-block"/>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="Connexion.jsp">Vous avez deja un compte? Connectez-vous</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <hr>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="js/scripts.js"></script>
</body>
</html>