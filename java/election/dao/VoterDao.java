package election.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import election.model.VoteBean;

public class VoterDao {
	public int voter(VoteBean vote) throws ClassNotFoundException {

		 String INSERT_VOTE_SQL = "INSERT INTO votes" +
		                "  (idelecteur, idcandidat) VALUES " +
		                " (?, ?);";
		    int result = 0;
		            Class.forName("com.mysql.cj.jdbc.Driver");
		            try (Connection connection = DriverManager
		                    .getConnection("jdbc:mysql://localhost:3306/election?useSSL=false", "tech", "tech2021");
		                		// Step 2:Create a statement using connection object
		             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_VOTE_SQL)) {
		                        preparedStatement.setString(1, vote.getElecteur());
		                        preparedStatement.setString(2, vote.getCandidat());
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

