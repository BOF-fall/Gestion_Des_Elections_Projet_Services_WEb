package election.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import election.model.ElecteurBean;

public class RegisterDao {
	public int register(ElecteurBean electeur) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO electeur" +
                "  (cni, nom, prenom, datenaiss, password, idregion, iddep, idcom, idlieu, idbv) VALUES " +
                " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
            int result = 0;
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection connection = DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/election?useSSL=false", "tech", "tech2021");
                		// Step 2:Create a statement using connection object
                        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
                        preparedStatement.setString(1, electeur.getCni());
                        preparedStatement.setString(2, electeur.getNom());
                        preparedStatement.setString(3, electeur.getPrenom());
                        preparedStatement.setString(4, electeur.getDatenaiss());
                        preparedStatement.setString(5, electeur.getPassword());
                        preparedStatement.setString(6, electeur.getRegion());
                        preparedStatement.setString(7, electeur.getDep());
                        preparedStatement.setString(8, electeur.getCom());
                        preparedStatement.setString(9, electeur.getLieuvote());
                        preparedStatement.setString(10, electeur.getBvote());
                        System.out.println(preparedStatement);
                        // Step 3: Execute the query or update query
                        result = preparedStatement.executeUpdate();
                        
                        }catch (SQLException e) {
                            // process sql exception
                            printSQLException(e);
                        }
                        return result;}
	 private void printSQLException(SQLException ex) {
	        for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }

}
