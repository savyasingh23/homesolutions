package homesolution.Controller;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;


import daos.ISignupdao;
import daos.ISignupqueries;
import daos.Signupdao;
import daos.Signupqueries;
import pojos.Emailpassword;
import pojos.Signup;




@WebServlet("/")
public class WebsiteController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Signupdao signupdao;
    private String fn,ln,g,contactnum,email1,password1,st,c,add,anc;int pin;
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
		    
		    case "/signup1":contactnum=request.getParameter("contnum");
							password1=request.getParameter("password");
							System.out.println(contactnum+password1);
							try {
		    					checkContact(request, response);
		    				} catch (Exception e) {
		    					e.printStackTrace();
		    				}
		    				break;
		    case "/signup2":fn=request.getParameter("firstname");
		    				ln=request.getParameter("lastname");
		    				email1=request.getParameter("email");
		    				g=request.getParameter("gender");
		    				anc=request.getParameter("agreeandcontinue");
		    				pin=Integer.parseInt(request.getParameter("pincode"));
							add=request.getParameter("address");
							st=request.getParameter("state");
							c=request.getParameter("city");
							System.out.println(fn+ln+contactnum);
							createUsers2(request,response);
							response.sendRedirect("project1.jsp");
		    				break;
			case "/forgetpassword":
								try {
										forgotPassword(request, response);
									} catch (Exception e) {
											e.printStackTrace();
										}
		    				break;
		    				
		    case "/cancelsignup":cancelUser(request,response);
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
        


private void cancelUser(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		Signupdao signupdao = new Signupdao();
	}

private void createUsers2(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

    
	String signedupasa=request.getParameter("signedupasa");
	String address=add;
	int pincode=pin;
	String city=c;
	String email=email1;
	String password=password1;
	String state=st;
	String firstname=fn;
	String lastname=ln;
	String gender=g;
	String contnum=contactnum;
	String agreeandcontinue=anc;			
	 Signup signup = new Signup();
	 Signupdao signupdao = new Signupdao();
	 signup.setFirstname(firstname);
	 signup.setContnum(contnum);
     signup.setLastname(lastname);
     signup.setEmail(email);
     signup.setPassword(password);
     signup.setGender(gender);
     signup.setSignedupasa(signedupasa);
     signup.setAddress(address);
     signup.setCity(city);
     signup.setPincode(pincode);
     signup.setState(state);
     signup.setAgreeandcontinue(agreeandcontinue);
     signupdao.saveUsers(signup);
	}



    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       doGet(request, response);
    }

    private void authenticate(HttpServletRequest request, HttpServletResponse response)
    throws Exception {
    	
        String contnum = request.getParameter("contnum");
        String password = request.getParameter("password");
        ISignupqueries sq = new Signupqueries();
        if (sq.checkUser(contnum, password)) {
        	 response.sendRedirect("project1.jsp");
        } else {
            //throw new Exception("Login not successful..");
        	System.out.println("Login unsuccessfull");
        	request.setAttribute("errMsg", "Invalid Contact number or Password");
        	RequestDispatcher rd = request.getRequestDispatcher("signin.jsp");
            rd.forward(request, response); 
           // response.sendRedirect("signin.jsp");
        }
    }
    private void checkContact(HttpServletRequest request, HttpServletResponse response)
    	    throws Exception {
    	    	
    	        String contnum = request.getParameter("contnum");
    	        ISignupqueries sq = new Signupqueries();
    	        if (sq.checkContact(contnum)) {
    	        	System.out.println("Contact number already present");
    	        	request.setAttribute("errMsg", "Contact Number already exists");
    	        	RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
    	            rd.forward(request, response); 
    	        	 
    	        } else {
    	            
    	            response.sendRedirect("register.jsp");
    	           // response.sendRedirect("signin.jsp");
    	        }
    	    }
    private void forgotPassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String contnum = request.getParameter("contnum");
    	String newpassword = request.getParameter("newpassword");
    	String confirmpassword=request.getParameter("confirmpassword");
        ISignupqueries sq = new Signupqueries();
        if(confirmpassword.equals(newpassword)) {
        if (sq.forgotPassword(contnum,newpassword)) {
        	System.out.println("Password Changed successfully");
        	request.setAttribute("errMsg1", "Password Changed Sucessfully.");
        	RequestDispatcher rd = request.getRequestDispatcher("forgetpassword.jsp");
            rd.forward(request, response); 
        	 
        } else {
            System.out.print("Password cannot be changed");
           // response.sendRedirect("signin.jsp");
        }}
        else {
        	request.setAttribute("errMsg2", "New password and Confirmed password does not match");
        	RequestDispatcher rd = request.getRequestDispatcher("forgetpassword.jsp");
            rd.forward(request, response); 
        }
        
	}
}
