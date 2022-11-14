package election.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import election.dao.RegisterDao;
import election.model.ElecteurBean;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RegisterDao userdao;
	public void init() {
		userdao= new RegisterDao();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		String prenom = request.getParameter("prenom");
        String  nom= request.getParameter("nom");
        String datenaiss = request.getParameter("datenaiss");
        String cni = request.getParameter("cni");
        String region = request.getParameter("region");
        String dep = request.getParameter("dep");
        String com = request.getParameter("com");
        String lieuvote = request.getParameter("lieuvote");
        String bvote = request.getParameter("bvote");
        String password = request.getParameter("password");
        
        ElecteurBean electeur = new ElecteurBean();
        electeur.setPrenom(prenom);
        electeur.setNom(nom);
        electeur.setDatenaiss(datenaiss);
        electeur.setCni(cni);
        electeur.setRegion(region);
        electeur.setDep(dep);
        electeur.setCom(com);
        electeur.setLieuvote(lieuvote);
        electeur.setBvote(bvote);
        electeur.setPassword(password);
        
        try {
        	userdao.register(electeur);
        }catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        response.sendRedirect("index.jsp");
        
	}

}
