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

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import daos.ISignupdao;
import daos.ISignupqueries;
import daos.Signupdao;
import daos.Signupqueries;
import daos.Worktododao;
import daos.Worktodohql;
import hibernate.util.Hibernateutil;
import pojos.Signup;
import pojos.Worktodo;




@WebServlet("/")
public class WebsiteController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Signupdao signupdao;
    private String fn,ln,g,contactnum,email1,password1,payment,st,c,add,cont,anc,d,t,cn,co,contactnumreg,bname,cepr,cod;int pin;
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
							try {
								createUsers2(request,response);
							} catch (Exception e1) {
								e1.printStackTrace();
								}
		    				break;
		    case "/avunav":bname=request.getParameter("bname");
		    				cepr=request.getParameter("contnum");
		    				System.out.print(bname);
		    				epr(request,response);
		    				break;
			case "/forgetpassword":
								try {
										forgotPassword(request, response);
									} catch (Exception e) {
											e.printStackTrace();
										}
		    				break;
		
			case "/status":cod = request.getParameter("cod");
							co=request.getParameter("w_id");
							cont=request.getParameter("contnum");
							status(request,response);
							break;
			case "/userpage2":cn=request.getParameter("contnum");
								contactnumreg=request.getParameter("contnumreg");
								d=request.getParameter("doc");
								t=request.getParameter("time");
								payment=request.getParameter("payment");
								
								System.out.println(cn+d+t+contactnumreg);
								eprpage(request,response);
								userpage(request,response);
								
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
        




private void status(HttpServletRequest request, HttpServletResponse response) {
		int w_id=Integer.parseInt(co);
		String contnum=cont;
		String codq=cod;
		Worktododao wd= new Worktododao();
		boolean b=wd.changeStatus(codq, w_id);
		System.out.println(b);
		Transaction t = null;
	 	Signup ep = null;
	     try  {
	     	SessionFactory sf = Hibernateutil.getSessionFactory();
	     	Session s = sf.openSession();
	     	t = s.beginTransaction();
	         ep = (Signup) s.createQuery("FROM Signup S WHERE S.contnum = :contnum").setParameter("contnum", contnum).uniqueResult();

	           t.commit();
	     } catch (Exception e) {
	         if (t != null) {
	             t.rollback();
	         }
	         e.printStackTrace();
	     }
	 	
	     request.setAttribute("firstname", ep.getFirstname());
	  	request.setAttribute("lastname", ep.getLastname());
	  	request.setAttribute("pincode", ep.getPincode());
	  	request.setAttribute("gender", ep.getGender());
	  	request.setAttribute("city", ep.getCity());
	  	request.setAttribute("state", ep.getState());
	  	request.setAttribute("address", ep.getAddress());
	  	request.setAttribute("signedupasa", ep.getSignedupasa());
	  	request.setAttribute("email", ep.getEmail());
	  	request.setAttribute("contnum", ep.getContnum());
	  	request.setAttribute("avunav", ep.getAvunav());

	  	RequestDispatcher rd = request.getRequestDispatcher("epr.jsp");
	      try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}

private void epr(HttpServletRequest request, HttpServletResponse response) {
	String b=bname;
	String contnum=cepr;
	Signupqueries sq = new Signupqueries();
	boolean bool=sq.changeAvuav(b, contnum);
	System.out.println(bool);
	Transaction t = null;
 	Signup ep = null;
     try  {
     	SessionFactory sf = Hibernateutil.getSessionFactory();
     	Session s = sf.openSession();
     	t = s.beginTransaction();
         ep = (Signup) s.createQuery("FROM Signup S WHERE S.contnum = :contnum").setParameter("contnum", contnum).uniqueResult();

           t.commit();
     } catch (Exception e) {
         if (t != null) {
             t.rollback();
         }
         e.printStackTrace();
     }
 	
     request.setAttribute("firstname", ep.getFirstname());
  	request.setAttribute("lastname", ep.getLastname());
  	request.setAttribute("pincode", ep.getPincode());
  	request.setAttribute("gender", ep.getGender());
  	request.setAttribute("city", ep.getCity());
  	request.setAttribute("state", ep.getState());
  	request.setAttribute("address", ep.getAddress());
  	request.setAttribute("signedupasa", ep.getSignedupasa());
  	request.setAttribute("email", ep.getEmail());
  	request.setAttribute("contnum", ep.getContnum());
  	request.setAttribute("avunav", ep.getAvunav());

  	RequestDispatcher rd = request.getRequestDispatcher("epr.jsp");
      try {
		rd.forward(request, response);
	} catch (ServletException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
	}

private void eprpage(HttpServletRequest request, HttpServletResponse response) {
	Worktodohql whql = new Worktodohql();
	String contnum=cn;
	String connumreg=contactnumreg;
	String date=d;
	String time=t;
	String pay=payment;
	String status="Pending";
	 Worktodo w = new Worktodo();
	 w.setContnum(contnum);
	 w.setContnumreg(connumreg);
	 w.setDate(date);
	 w.setTime(time);
    w.setPayment(pay);
    w.setStatus(status);
    w.setAddress(whql.checkUser(contnum));
     Worktododao wd=new Worktododao();
     wd.saveUsers(w);

	}


private void userpage(HttpServletRequest request, HttpServletResponse response) {
		String contnum=cn;
		Transaction t = null;
    	Signup ep = null;
        try  {
        	SessionFactory sf = Hibernateutil.getSessionFactory();
        	Session s = sf.openSession();
        	t = s.beginTransaction();
            ep = (Signup) s.createQuery("FROM Signup S WHERE S.contnum = :contnum").setParameter("contnum", contnum).uniqueResult();

              t.commit();
        } catch (Exception e) {
            if (t != null) {
                t.rollback();
            }
            e.printStackTrace();
        }
    	
        
        		request.setAttribute("firstname", ep.getFirstname());
             	request.setAttribute("lastname", ep.getLastname());
             	request.setAttribute("pincode", ep.getPincode());
             	request.setAttribute("gender", ep.getGender());
             	request.setAttribute("city", ep.getCity());
             	request.setAttribute("state", ep.getState());
             	request.setAttribute("address", ep.getAddress());
             	request.setAttribute("signedupasa", ep.getSignedupasa());
             	request.setAttribute("email", ep.getEmail());
             	request.setAttribute("contnum", ep.getContnum());
             	RequestDispatcher rd = request.getRequestDispatcher("enduser.jsp");
                 try {
					rd.forward(request, response);
				} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
		
	}

private void createUsers2(HttpServletRequest request, HttpServletResponse response) throws Exception {
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
	String avunav="available";
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
     signup.setAvunav(avunav);
     signupdao.saveUsers(signup);
     
     Transaction t = null;
 	Signup ep = null;
     try  {
     	SessionFactory sf = Hibernateutil.getSessionFactory();
     	Session s = sf.openSession();
     	t = s.beginTransaction();
         ep = (Signup) s.createQuery("FROM Signup S WHERE S.contnum = :contnum").setParameter("contnum", contnum).uniqueResult();

           t.commit();
     } catch (Exception e) {
         if (t != null) {
             t.rollback();
         }
         e.printStackTrace();
     }
 	
     ISignupqueries sq = new Signupqueries();
     	
     	if(sq.loginPage(contnum).equals("End-User")) {
     		request.setAttribute("firstname", ep.getFirstname());
         	request.setAttribute("lastname", ep.getLastname());
         	request.setAttribute("pincode", ep.getPincode());
         	request.setAttribute("gender", ep.getGender());
         	request.setAttribute("city", ep.getCity());
         	request.setAttribute("state", ep.getState());
         	request.setAttribute("address", ep.getAddress());
         	request.setAttribute("signedupasa", ep.getSignedupasa());
         	request.setAttribute("email", ep.getEmail());
         	request.setAttribute("contnum", ep.getContnum());
         	RequestDispatcher rd = request.getRequestDispatcher("enduser.jsp");
             rd.forward(request, response); 
     	}
     	else {
         	request.setAttribute("firstname", ep.getFirstname());
         	request.setAttribute("lastname", ep.getLastname());
         	request.setAttribute("pincode", ep.getPincode());
         	request.setAttribute("gender", ep.getGender());
         	request.setAttribute("city", ep.getCity());
         	request.setAttribute("state", ep.getState());
         	request.setAttribute("address", ep.getAddress());
         	request.setAttribute("signedupasa", ep.getSignedupasa());
         	request.setAttribute("email", ep.getEmail());
         	request.setAttribute("contnum", ep.getContnum());
         	request.setAttribute("avunav", ep.getAvunav());

         	RequestDispatcher rd = request.getRequestDispatcher("epr.jsp");
             rd.forward(request, response); 

     	}
     	

}

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       doGet(request, response);
    }

    private void authenticate(HttpServletRequest request, HttpServletResponse response)
    throws Exception {

        String contnum = request.getParameter("contnum");
        String password = request.getParameter("password");
    	Transaction t = null;
    	Signup ep = null;
        try  {
        	SessionFactory sf = Hibernateutil.getSessionFactory();
        	Session s = sf.openSession();
        	t = s.beginTransaction();
            ep = (Signup) s.createQuery("FROM Signup S WHERE S.contnum = :contnum").setParameter("contnum", contnum).uniqueResult();

              t.commit();
        } catch (Exception e) {
            if (t != null) {
                t.rollback();
            }
            e.printStackTrace();
        }
    	
        ISignupqueries sq = new Signupqueries();
        if (sq.checkUser(contnum, password)) {
        	if(sq.loginPage(contnum).equals("End-User")) {
        		request.setAttribute("firstname", ep.getFirstname());
             	request.setAttribute("lastname", ep.getLastname());
             	request.setAttribute("pincode", ep.getPincode());
             	request.setAttribute("gender", ep.getGender());
             	request.setAttribute("city", ep.getCity());
             	request.setAttribute("state", ep.getState());
             	request.setAttribute("address", ep.getAddress());
             	request.setAttribute("signedupasa", ep.getSignedupasa());
             	request.setAttribute("email", ep.getEmail());
             	request.setAttribute("contnum", ep.getContnum());
             	RequestDispatcher rd = request.getRequestDispatcher("enduser.jsp");
                 rd.forward(request, response); 
                 
        	}else {
            	request.setAttribute("firstname", ep.getFirstname());
            	request.setAttribute("lastname", ep.getLastname());
            	request.setAttribute("pincode", ep.getPincode());
            	request.setAttribute("gender", ep.getGender());
            	request.setAttribute("city", ep.getCity());
            	request.setAttribute("state", ep.getState());
            	request.setAttribute("address", ep.getAddress());
            	request.setAttribute("signedupasa", ep.getSignedupasa());
            	request.setAttribute("email", ep.getEmail());
            	request.setAttribute("contnum", ep.getContnum());
             	request.setAttribute("avunav", ep.getAvunav());

            	RequestDispatcher rd = request.getRequestDispatcher("epr.jsp");
            	
                rd.forward(request, response); 

        	}
        } else {
            //throw new Exception("Login not successful..");
        	System.out.println("Login unsuccessfull");
        	request.setAttribute("errMsg", "Invalid Password");
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
