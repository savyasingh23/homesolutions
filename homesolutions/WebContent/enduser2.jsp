<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Transaction"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Repairer</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

    <style>
        *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Montserrat', sans-serif;
}

html,body{
    width: 100%;
    height: 100%;
}

#back{
    display: flex;
    width: 100%;
    height: 100%;
    overflow: hidden;
}

#left{
    width: 40%;
    height: 100%;
    background-image:linear-gradient(to bottom,rgba(255, 180, 20, 0.73), rgba(245, 246, 252, 0.2) ), url("https://images.unsplash.com/photo-1555963966-b7ae5404b6ed?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80");
    background-size: cover;
    background-position: -180px;
}

#left h2{
    color: #fff;
    margin-left: 200px;
    margin-top: 50px;
}

#left form{
    display: flex;
    flex-direction: column;
    padding: 50px ;
    margin-top: 1px;
}

#left form #bt{
    display: flex;
}


#left form #bt .details{
    width: 250px;
    height: 50px;
    outline: none;
    margin-top: 10px;
    border: none 2px #fff;
    color: #fff;
    background-color: transparent;
    font-weight: 600;
    font-size: 15px;

}

#left form button{
    width: 250px;
    height: 50px;
    outline: none;
    margin-top: 10px;
    border: none 2px #fff;
    color: #fff;
    background-color: transparent;
    font-weight: 600;
    font-size: 15px;

}

#left button:hover{
    font-size: 16px;
    background-color: rgb(255, 180, 20);

}

#right{
    width: 60%;
    height: 100%;
}

#right #links{
    height: 20px;
    margin-top: 50px;
    margin-left: 300px;
    margin-right: 50px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

#right #links a{
    text-decoration: none;
    color: rgb(65, 64, 64);
    font-size: 15px;
    font-weight: 600;
}

#right #links a:hover{
    color: rgb(255, 180, 20);

}

#right #links a:active{
    border-bottom: 2px solid rgb(255, 180, 20);
    padding-bottom: 3px;
    color: rgb(255, 180, 20);
    font-weight: 600;
}

#registeruserlist{

}

#registeruser{
    padding-left: 50px;
    padding-top: 50px;
    margin-top: 10px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

#registeruser #img{
    width: 110px;
    height: 120px;
    background-color: gray;
}

#registeruser #info{
}

#registeruser p{
    font-size: 14px;
    font-weight: 550;
    color: rgb(65, 64, 64);
    margin-top: 20px;
    margin-right: 530px;
}

#registeruser #info button{
    width: 100px;
    height: 30px;
    border: none;
    outline: none;
    margin-top: 20px;
    margin-bottom: -50px;
    margin-left: 150px;
    background-color:  rgb(248, 193, 73);
    color: #fff;
    font-weight: 600;
    font-size: 14px;
}

#registeruser #info button:hover{
    font-size: 15px;
    background-color: rgb(255, 180, 20);


}



    </style>
    
 <%
String pin=request.getParameter("pincode");
String contnum = request.getParameter("contnum");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/homesolutions?useSSL=false";
String userId = "root";
String password = "sanyasavya";

Connection connection = null;
Statement statement = null;
ResultSet resultset = null;
%>
<%
try{ 
	Class.forName(driverName);
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM signup WHERE contnum="+contnum;
resultset = statement.executeQuery(sql);
while(resultset.next()){
%>
    <div id="nav"></div>
    <div id="back">
        <div id="left">
            <h2>User's Information</h2>
            
            <form action="">
                <div id="bt">
                    <button id="rbt" >First Name</button>
                    <div class="details" id="details1" style="text-align:center;"><span style="color:black;"><%=resultset.getString("firstname") %></span></div>
                </div>
                <div id="bt">
                    <button >Last Name</button>
                    <div class="details" id="details2" style="text-align:center;"><span style="color:black;"><%=resultset.getString("lastname") %></span></div>
                </div>

                <div id="bt">
                    <button  >Phone Number</button>
                    <div class="details" id="details3" style="text-align:center;"><span style="color:black;"><%=resultset.getString("contnum") %></span></div>
                </div>
                <div id="bt">
                    <button >Address</button>
                    <div class="details" id="details4" style="text-align:center;"><span style="color:black;"><%=resultset.getString("address") %></span></div>
                </div>
                <div id="bt">
                    <button >City</button>
                    <div class="details" id="details5" style="text-align:center;"><span style="color:black;"><%=resultset.getString("city") %></span></div>
                </div>
                <div id="bt">
                    <button >State</button>
                    <div class="details" id="details6" style="text-align:center;"><span style="color:black;"><%=resultset.getString("state") %></span></div>
                </div>
                <div id="bt">
                    <button >Pincode</button>
                    <div class="details" id="details7" style="text-align:center;"><span style="color:black;"><%=resultset.getString("pincode") %></span></div>
                </div>
                <div id="bt">
                    <button  >Signed up as</button>
                    <div class="details" id="details8" style="text-align:center;"><span style="color:black;"><%=resultset.getString("signedupasa") %></span></div>
                </div>
                <div id="bt">
                    <button >Gender</button>
                    <div class="details" id="details9" style="text-align:center;"><span style="color:black;"><%=resultset.getString("gender") %></span></div>
                </div>

                <div id="bt">
                </div>



            </form>
        </div>
         <% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
        <div id="right">
            
            <div id="links">
                	<a href="yourbookings.jsp?contnum=<%=request.getParameter("contnum") %>&&pincode=<%=request.getParameter("pincode")%>">Your Bookings</a>
                <a href="enduser3.jsp?contnum=<%=request.getParameter("contnum")%>&&pincode=<%=request.getParameter("pincode")%>">Electricians</a>
                <a href="enduser1.jsp?contnum=<%=request.getParameter("contnum") %>&&pincode=<%=request.getParameter("pincode")%>">Plumbers</a>
                <a href="enduser2.jsp?contnum=<%=request.getParameter("contnum") %>&&pincode=<%=request.getParameter("pincode")%>">Repairers</a>
           		<a href="signin.jsp">Log out</a>
            </div>
                        
<%
try{ 
	Class.forName(driverName);
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM signup WHERE signedupasa='Repairer' AND pincode="+pin;
resultset = statement.executeQuery(sql);
while(resultset.next()){
%>
            
            <div id="registeruserlist">
                <div id="registeruser">
                    <div id="img"></div>
                    <div id="info">
                        <table>
                            <tr><p><%=resultset.getString("firstname") %></p></tr>
                            <tr><p><%=resultset.getString("lastname") %></p></tr>
                            <tr><p><%=resultset.getString("email") %></p></tr>
                           <tr> <p><%=resultset.getString("contnum") %></p></tr>
                           <tr> <p><b><%=resultset.getString("avunav") %></b></p></tr><br>
                        <%  if(resultset.getString("avunav").equals("available")){
                        
                        %>
                            <a href="userpage2.jsp?contnum=<%=resultset.getString("contnum")%>&&pincode=<%=request.getParameter("pincode")%>&&cont=<%=request.getParameter("contnum")%>">Select</a>
                             <%}
                        else {
                             
                             %>
                              <a href="#" >Select</a>
                             <%
                             }%>
                               </table>
                        
                        

                    </div>
                </div>
                
            </div>
              <% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
             
        </div>
    </div>



    <script>
    

    </script>

    
</body>
</html>