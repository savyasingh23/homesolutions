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
    <title>Form</title>
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
       
    </style>
    
       
 <%
String pin=request.getParameter("pincode");
String contnum = request.getParameter("cont");
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
                    <button onclick="signin.jsp">Log out</button>
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
           
<%
String cont=request.getParameter("contnum");

try{ 
	Class.forName(driverName);
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM signup WHERE contnum="+cont;
resultset = statement.executeQuery(sql);
while(resultset.next()){
%>
            <form action="<%=request.getContextPath()%>/userpage2" method="post" id="form">
                <div id="formdet">
                    <div id="leftform">
                     <p><%=resultset.getString("signedupasa") %>'s first name</p>
                        <p><%=resultset.getString("signedupasa") %>'s last name</p>
                        <p><%=resultset.getString("signedupasa") %>'s email</p><br><br>
                        <p><%=resultset.getString("signedupasa") %>'s contact number</p>
                        <p>Your Contact Number</p>
                        <p>Date of coming</p>
                        <p>Approx time to come</p>
                        <p>Mode of Payment</p>
                        
                    </div>
                    <div id="rightform">
                        <p><%=resultset.getString("firstname") %></p>
                        <p><%=resultset.getString("lastname") %></p>
                        <p><%=resultset.getString("email") %></p><br><br>
                        <p><input type="number" value=<%=resultset.getString("contnum") %> name="contnumreg" readonly ></p>
                        <p><input type="number" placeholder="Your Contact number" name="contnum" > </p>
                        <p><input type="date" id="birthday" name="doc" > </p>
                        <p><input type="time" id="appt" name="time"> </p>
						<p><input type="text" id="appt" name="payment" value="CASH" readonly> </p>
						
                    </div>
                </div>

               
            </form>
             <div id="buttons">
                    <button onclick="return formSubmit()">Confirm</button>
                    <button ><a href="enduser3.jsp?contnum=<%=request.getParameter("cont")%>&&pincode=<%=request.getParameter("pincode")%>" style="text-decoration:none;color:#ffffff;">Cancel</a></button>
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
        function formSubmit() {
        	var b = document.forms["form"]["contnum"].value;
      	  if (b == "" || b.length!=10) {
      	    alert(" Contact Number must be filled out or Invalid Contact Number");
      	    return false;
      	  }
      	  var c = document.forms["form"]["doc"].value;
      	  if (c == "") {
      	    alert(" Arriving date must be filled out");
      	    return false;
      	  }
      	  var d = document.forms["form"]["time"].value;
      	  if (d == "") {
      	    alert(" Time must be filled out");
      	    return false;
      	  }
      	
      	var today=new Date();
		var date=new Date(document.forms["form"]["doc"].value);
		var t = today.getHours()+":"+today.getMinutes();
		
      	 if(date<today && date.setHours(0,0,0,0)!=today.setHours(0,0,0,0)) {
      		 
      		 alert("Invalid Date and Time");   
      		 return false;
 
      	 }
      	 if((d<=t) && (date.setHours(0,0,0,0)==today.setHours(0,0,0,0))){
      		 alert("Invalid Time");
      		 return false;
      	 }
      	 if(b!="" && c!="" && d!="" && b.length==10 && (date>today || ((date.setHours(0,0,0,0)==today.setHours(0,0,0,0)) && d>t))){
      		      		     	
      			document.getElementById("form").submit();
          		alert("Your Request has been taken down");
          		return true;
      		
      	 }
      	 
      	  
        }
        	
        

    </script>

    
</body>
</html>