package homesolution.Controller;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.ISignupdao;
import daos.ISignupqueries;
import daos.Signupdao;
import daos.Signupqueries;
import pojos.Signup;




@WebServlet("/")
public class WebsiteController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Signupdao signupdao;

    public void init() {
        signupdao = new Signupdao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        response.sendRedirect("Minor-Project-main/project1.jsp");
        String action = request.getServletPath();

        switch (action) {
		    case "/":
		    	response.sendRedirect("project1.jsp");
		        break;
		    case "/signup":
		    	createUsers(request, response);
		        response.sendRedirect("project1.jsp");
		        break;
		    case "/login":
			try {
				authenticate(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		       
		        break;
		    default:
		        //listUser(request, response);
		        break;
		}
    }
        
//    private void login(HttpServletRequest request, HttpServletResponse response) {
//		
//	}

	private void createUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Signup signup = new Signup();
        signup.setUsername(username);
        signup.setEmail(email);
        signup.setPassword(password);
        signupdao.saveUsers(signup);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("Minor-Project-main/project1.jsp");
//        dispatcher.forward(request, response);
//        response.sendRedirect("Minor-Project-main/project1.jsp");
       
	}

	

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       doGet(request, response);
    }

    private void authenticate(HttpServletRequest request, HttpServletResponse response)
    throws Exception {
    	
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        ISignupqueries sq = new Signupqueries();
        if (sq.checkUser(username, password)) {
        	 response.sendRedirect("project1.jsp");
        } else {
            //throw new Exception("Login not successful..");
        	System.out.println("Login unsuccessfull");
            response.sendRedirect("index.jsp");
        }
    }
}
