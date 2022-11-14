<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.*, java.text.*"  %>  
   <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Voter</title>
	    <link href="styles/css/styles.css" rel="stylesheet" />
        <script src="styles/bootstrap/js/bootstrap.bundle.min.js"></script>
</head>
<body>


	<div class="container">
		<div class="row">
		<form action="<%= request.getContextPath() %>/VoteServlet" method="post">
<div class="col-md-8">
    <div class="form-floating mb-3 mb-md-0">
    <div class="card">
              <div class="card-body">
              
         
	<%
	
	   try{
		   
       
            Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/election","tech","tech2021");
        	String sql = "select * from electeur";
            PreparedStatement stmt = con.prepareStatement(sql);
        	ResultSet rs = stmt.executeQuery();
        	if(rs.next()==false){
                out.println("No Records in the table");
           }else
                                {%>
                           
                                <%
            				    do{%>
           
            		<input type="hidden" id="Idelecteur" name="electeur" value="<%= rs.getString(1)%>">
            					<%}while(rs.next());
        						
        						}
       
							    }
		catch(Exception e){
    	 e.getStackTrace();}
							   %>
		<%
	   try{
       
            Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/election","tech","tech2021");
        	String sql = "select * from candidat;";
            PreparedStatement stmt = con.prepareStatement(sql);
        	ResultSet rs = stmt.executeQuery();
        	if(rs.next()==false){
                out.println("No Records in the table");
           }else
                                {%>
                <select id="inputState" class="form-select form-control"  name="candidat">
                 <option value="" selected>--Candidat--</option>
                                <%
            				    do{%>
           
            		<option value="<%= rs.getString(1)%>"><%= rs.getString(2)%><%= rs.getString(3)%></option>
            					<%}while(rs.next());
        						
        						}
       
							    }
		catch(Exception e){
    	 e.getStackTrace();}
							   %>
		</select>


				<input type="submit" value="Voter" class="btn btn-primary"/>
        </div> 
       </div>
      </div>
    </div>
</form>
		
		</div>
	</div>


</body>
</html>