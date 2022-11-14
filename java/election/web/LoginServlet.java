package election.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import election.dao.LoginDao;
import election.model.ElecteurBean;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private LoginDao loginDao;
	public void init() {
        loginDao = new LoginDao();
    }
    
    public LoginServlet() {
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
		String cni = request.getParameter("cni");
        String password = request.getParameter("password");
        ElecteurBean electeur = new ElecteurBean();
        electeur.setCni(cni);
        electeur.setPassword(password);
        
        try {
            if (loginDao.login(electeur)) {
                HttpSession session = request.getSession();
                session.setMaxInactiveInterval(100);
                session.setAttribute("cni",cni);
                response.sendRedirect("dashboard.jsp");
            } else {
               // HttpSession session = request.getSession();
                //session.setAttribute("cni", cni);
                response.sendRedirect("/WebService_BOF/html/404.html");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
	}

}
