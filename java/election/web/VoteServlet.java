package election.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import election.dao.VoterDao;
import election.model.VoteBean;

/**
 * Servlet implementation class VoteServlet
 */
@WebServlet("/VoteServlet")
public class VoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VoterDao votedao;
	public void init() {
		votedao= new VoterDao();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String electeur = request.getParameter("electeur");
		String  candidat = request.getParameter("candidat");
		        VoteBean votebean = new VoteBean();
		        
		        votebean.setElecteur(electeur);
		        votebean.setCandidat(candidat);
		        try {
		        	votedao.voter(votebean);
		        }catch (Exception e) {
		            // TODO Auto-generated catch block
		            e.printStackTrace();
		        }
		        response.sendRedirect("votesuccess.jsp");
	}

}
