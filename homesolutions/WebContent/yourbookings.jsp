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
    <title>Your Bookings</title>
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
    background-color:transparent;
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
    margin-left: 500px;
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


#right #formdet{
    display: flex;
    align-items: center;
    justify-content: space-between;
    background-color:transparent;
    padding-left: 50px;
    padding-right: 300px;
    padding-top: 100px;
}

#right #formdet p{
    margin-bottom: 20px;

}

#right #formdet input{
    height: 20px;
    border: none;
    outline: none;
    width: 300px;
    background-color: rgb(250, 235, 208);
}




#right #buttons button:nth-child(1){
    width: 150px;
    height: 50px;
    border: none;
    outline: none;
    margin-left: 120px;
    background-color:  rgb(248, 193, 73);
    color: #fff;
    font-weight: 600;
    font-size: 15px;
    position: absolute;
    top: 75%;
    left: 50%;
    transform: translate(-50%,-50%);

}

#right #buttons button:nth-child(2){
    width: 150px;
    height: 50px;
    border: none;
    outline: none;
    margin-left: 120px;
    background-color:  rgb(248, 193, 73);
    color: #fff;
    font-weight: 600;
    font-size: 15px;
    position: absolute;
    top: 75%;
    left: 62%;
    transform: translate(-50%,-50%);

}

#right #buttons button:nth-child(1):hover{
    font-size: 16px;
    background-color: rgb(255, 180, 20);
}

#right #buttons button:nth-child(2):hover{
    font-size: 16px;
    background-color: rgb(255, 180, 20);
}

table {
    margin-top: 60px;
    margin-left: 30px;
    border-collapse: collapse;
    width: 95%;
  }

th{
    
}

td, th {
    text-align: left;
    padding: 8px;
    color: #707070;
}

a{
    text-decoration: none;
    margin-top: 10px;
    margin-left: 740px;
    cursor: pointer;
    padding: 20px;
    position:absolute;
    color: rgb(255, 180, 20);
}

a:hover{
     color: rgb(255, 174, 0);
     font-weight: 600;
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
ResultSet resultSet = null;
ResultSet rs = null;

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

                



            </form>
        </div>
         <% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>		<br><br><br>
        <div id="right">
            <a href="enduser3.jsp?contnum=<%=request.getParameter("contnum") %>&&pincode=<%=request.getParameter("pincode")%>"  >Back</a>            
           <table>
	
			<tr>

				<th>Contact Number</th>
				<th>Name</th>
				<th>Electrician/Plumber/Repairer</th>
				<th>Date</th>
				<th>Time</th>
				<th>Status</th>
			</tr>
<%

try{ 
	Class.forName(driverName);
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM worktodo WHERE contnum="+contnum;
resultset = statement.executeQuery(sql);
while(resultset.next()){
%>
            <tr>
				
				<td><%=resultset.getString("contnumreg") %></td>
				<%
				try{ 
					Class.forName(driverName);
				connection = DriverManager.getConnection(connectionUrl, userId, password);
				statement=connection.createStatement();
				String sql1 ="SELECT * FROM signup WHERE contnum="+resultset.getString("contnumreg");
				resultSet = statement.executeQuery(sql1);
				while(resultSet.next()){
				%>
				<td><%=resultSet.getString("firstname")+" "+resultSet.getString("lastname") %></td>
				<td><%=resultSet.getString("signedupasa") %></td>
				
				<%
				}
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
				<td><%=resultset.getString("date") %></td>
				<td><%=resultset.getString("time") %></td>
				<%
				try{ 
					Class.forName(driverName);
				connection = DriverManager.getConnection(connectionUrl, userId, password);
				statement=connection.createStatement();
				String sql2 ="SELECT * FROM worktodo WHERE w_id="+resultset.getString("w_id");
				rs= statement.executeQuery(sql2);
				while(rs.next()){
				%>
				<td><%=rs.getString("status") %></td>
				<%
				}
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
				
            </tr>
 <% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
  
          </table>    
             
        </div>
    </div>



    <script>
        
        

    </script>

    
</body>
</html>s