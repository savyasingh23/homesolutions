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
<html>
<head>
	<link rel="stylesheet" type="text/css" href="C:\Users\HP NEW\Desktop\fontawesome icons\fontawesome-free-5.14.0-web\css\all.css">

	<style type="text/css" rel="stylesheet">
	.flex-container{
		display: flex;
		position: absolute;
		left:0.5;
	}	
	#div1{
		width: 240px;
		height: 1900px;
		float:left;
		border: 4px solid orange;
		margin-top: -20px;
	}	
	.button1{
		width: 120px;
		height: 60px;
		border-radius: 20px;
		border: 1px solid grey; 
		background-color: rgb(255,180,20);
	}
	.button1:hover{
		width: 130px;
		background-color: #FE9F50;
		height: 62px;
	}
	.fname{
		width: 250px;
		height: 50px;
		border-radius: 20px;
		border: 1px solid grey;
		margin-left: 25px;
		background-color: #D2D7DA;

	}
	#address{
		width: 250px;
		height: 150px;
		margin-left: 20px;
		border-radius: 20px;
		border: 1px solid grey;
		background-color: #D2D7DA;
	}
	#div2{
		text-align: center;
		background-size: cover;
	}
	table{
		margin-left: 50px;
		width: 1200px;
		height: 700px;
		margin-top: 50px;
		border: 3px solid black;
		font-size: 25px;
		padding: 5px;
		background-color: white;
		
	}
	h1{
		text-align: center;
		padding: 5px;
	}
	th{
		background-image: linear-gradient(to bottom,rgb(255,180,20),rgb(248,193,73));
		border: 3px solid orange; 
	}
	#nav{
		background-color: #D2D5D4;
		height: 50px;
		margin-top: -15px;
	}
	#progress{
	    height: 50px;
	    margin-top: -30px;
	    width: 1300px;	
	}
	.btnn{
		margin-top: 30px;
		background-color: #D2D5D4;
		border-radius: 30px;
		width: 150px;
		height: 50px;
		padding: 15px;
		border-color: transparent; 
	}
	.btnn:hover{
		background-color: rgb(255,180,20);
		width: 160px;
		
	}
	h2{
		margin-top: -60px;
		margin-left: 1000px;
	}
	h4{
		font-size: 16px;
		margin-left: -20px;
	}
	
	
	

	</style>
	<title></title>
</head>
<body>
	<div class="flex-container"> 
	<div id="div1">
		<div id="nav"><h1> User's Info</h1></div>       
  
          
           
		
		<ul>
		<div><button title="click here" onclick="openFName()" class="button1" ><li><h3>First Name</h3></button></li>
			<div id="fname" style="display:none">
				<h4><i class="fas fa-edit 3x"><span style="color:black;">${firstname}</span></i></h4>
			</div></div><br><br>

		<div><button title="click here" onclick="openLName()" class="button1" ><li><h3>Last Name</h3></button></li>
             <div id="lname" style="display:none">
             	<h4><i class="fas fa-edit 3x"><span style="color:black;">${lastname}</span></i></h4>
             	
             </div>
			</div><br><br>
      
         <div><button title="click here" onclick="openSignUp()" class="button1"><li><h3>Signed up as</h3></button></li>
			<div id="signup" style="display:none">
				<h4><i class="fas fa-edit 3x"><span style="color:black;">${signedupasa}</span></i></h4>

			</div></div><br><br>
			
		<div><button title="click here" onclick="openEmail()" class="button1"><li><h3>Email</h3></button></li>
			<div id="oemail" style="display:none">
			<h4><i class="fas fa-edit 3x"><span style="color:black;">${email}</span></i></h4>
			
			</div></div><br><br>
			
		<div><button title="click here" onclick="openAddress()" class="button1"><li><h3>Address</h3></button></li>
			<div id="address1" style="display:none">
			<h4><i class="fas fa-edit 3x"><span style="color:black;">${address}</span></i></h4>
			
			</div></div><br><br>	

        <div><button title="click here" onclick="openPincode()" class="button1"><li><h3>Pincode</h3></button></li>
			<div id="pincode" style="display:none">
							<h4><i class="fas fa-edit 3x"><span style="color:black;">${pincode}</span></i></h4>
			</div></div><br><br>

	    <div><button title="click here" onclick="openGender()" class="button1"><li><h3>Gender</h3></button></li>
			<div id="gender" style="display:none">
			<h4><i class="fas fa-edit 3x"><span style="color:black;">${gender}</span></i></h4>
			
			</div></div><br><br>

	     <div><button title="click here" onclick="openCity()" class="button1"><li><h3>City</h3></button></li>
			<div id="city" style="display:none">
				<h4><i class="fas fa-edit 3x"><span style="color:black;">${city}</span></i></h4>
			
			</div></div><br><br>
			
		 <div><button title="click here" onclick="openState()" class="button1"><li><h3>State</h3></button></li>
		 	<div id="state" style="display:none">
		 			<h4><i class="fas fa-edit 3x"><span style="color:black;">${state}</span></i></h4>
		 	
			</div></div><br><br>

	     <div><button title="click here" onclick="openNumber()" class="button1"><li><h3>Contact no</h3></button></li>
			<div id="number" style="display:none">
			<h4><i class="fas fa-edit 3x"><span style="color:black;">${contnum}</span></i></h4>
			
			</div></div><br><br>
			<div><button title="click here" onclick="openAv()" class="button1"><li><h3>Av / UnAv</h3></button></li>
			<div id="avunav" style="display:none">
			<h4><i class="fas fa-edit 3x"><span style="color:black;">${avunav}</span></i></h4>
			
			</div></div><br><br>

						
			<div><a href="signin.jsp"><button title="click here" class="button1"><li><h3>Log out</h3></button></a></li>
			</div><br><br>							
       </ul>
	</div>

	<div id="div2">
		<div id="progress"><center><h1>Progress</h1></center>
	
			<h2><i class="fas fa-home 2x"></i>Home</h2></div>
			<form action="<%=request.getContextPath() %>/avunav?contnum=<%=request.getAttribute("contnum") %>" method="post" id="form">
		<div><button class="btnn" onclick="aua()" name="bname" value="available">Available</button>
			<button class="btnn" onclick="una()" name="bname" value="unavailable">Unavailable</button></div>
			
				</form>
			
	<table>
	
			<tr>

				<th>Customer's Contact Number</th>
				<th>Customer's Name</th>
				<th>Customer's Address</th>
				<th>Date to come</th>
				<th>Arriving time</th>
				<th>Mode of Payment</th>
				<th>Status</th>
			</tr>
			<%
String contnum=(String)request.getAttribute("contnum");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/homesolutions?useSSL=false";
String userId = "root";
String password = "sanyasavya";

Connection connection = null;
Statement statement = null;
ResultSet resultset = null;
ResultSet resultSet = null;


try{ 
	Class.forName(driverName);
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM worktodo WHERE contnumreg="+contnum;
resultset = statement.executeQuery(sql);
while(resultset.next()){
%>
			<tr>
				
				<td><%=resultset.getString("contnum") %></td>
				<%


try{ 
	Class.forName(driverName);
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql1 ="SELECT * FROM signup WHERE contnum="+resultset.getString("contnum");
resultSet = statement.executeQuery(sql1);
while(resultSet.next()){
%>
				<td><%=resultSet.getString("firstname")+" "+resultSet.getString("lastname") %></td>
 <% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
				<td><%=resultset.getString("address") %></td>
				<td><%=resultset.getString("date") %></td>
				<td><%=resultset.getString("time") %></td>
				<td><%=resultset.getString("payment") %></td>
				<%if(resultset.getString("status").equals("Pending")) {
					%>
				<td>
				<form action="<%=request.getContextPath() %>/status?contnum=<%=request.getAttribute("contnum") %>&&w_id=<%=resultset.getString("w_id") %>" method="post" id="form1">
		<div><button class="btnn" onclick="cod()" name="cod" value="Confirm">Confirm</button>
			<button class="btnn" onclick="doc()" name="cod" value="Decline">Decline</button></div>
			<div id="unavailable" style="display:none">
				<h4>Confirm <i class="fas fa-edit 3x"></i></h4>
			</div><div id="available" style="display:none">
				<h4>Decline  <i class="fas fa-edit 3x"></i></h4>
			</div></form>
				</td>
				<%} 
				else {
					%>
				<td><%=resultset.getString("status") %></td>
					
					<%
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
<script type="text/javascript">
	
function openFName(){
	var x = document.getElementById("fname");
	if (x.style.display == "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }}
  function openLName(){
  	var y = document.getElementById("lname");
	if (y.style.display == "none") {
    y.style.display = "block";
  } else {
    y.style.display = "none";
  }}
  function openSignUp(){
  	var z = document.getElementById("signup");
	if (z.style.display == "none") {
    z.style.display = "block";
  } else {
    z.style.display = "none";
  }}
  function openEmail(){
  	var a = document.getElementById("oemail");
	if (a.style.display == "none") {
    a.style.display = "block";
  } else {
    a.style.display = "none";
  }}
  function openAddress(){
  	var b = document.getElementById("address1");
	if (b.style.display == "none") {
    b.style.display = "block";
  } else {
    b.style.display = "none";
  }}
  function openPincode(){
  	var c = document.getElementById("pincode");
	if (c.style.display == "none") {
    c.style.display = "block";
  } else {
    c.style.display = "none";
  }}
  function openGender(){
  	var d = document.getElementById("gender");
	if (d.style.display == "none") {
    d.style.display = "block";
  } else {
    d.style.display = "none";
  }}
  function openCity(){
  	var e = document.getElementById("city");
	if (e.style.display == "none") {
    e.style.display = "block";
  } else {
    e.style.display = "none";
  }}
  function openState(){
  	var f = document.getElementById("state");
	if (f.style.display == "none") {
    f.style.display = "block";
  } else {
    f.style.display = "none";
  }}
  function openNumber(){
  	var g = document.getElementById("number");
	if (g.style.display == "none") {
    g.style.display = "block";
  } else {
    g.style.display = "none";
  }}
  function openBankDetail(){
  	var h = document.getElementById("detail");
	if (h.style.display == "none") {
    h.style.display = "block";
  } else {
    h.style.display = "none";
  }}
  function openAv(){
	  	var e = document.getElementById("avunav");
		if (e.style.display == "none") {
	    e.style.display = "block";
	  } else {
	    e.style.display = "none";
	  }}
  function aua(){
	  	var h = document.getElementById("available");
	  	var i = document.getElementById("unavailable");

		if (h.style.display == "none") {
	    h.style.display = "block";
	  } else {
	    h.style.display = "none";
	  }
		i.style.display="none";
		alert("You clicked on available");
		document.getElementById("form").submit();
		}
  function una(){
	  	var h = document.getElementById("unavailable");
	  	var i = document.getElementById("available");

		if (h.style.display == "none") {
	    h.style.display = "block";
	  } else {
	    h.style.display = "none";
	  }
		i.style.display="none";
		alert("You clicked on unavailable");
		document.getElementById("form").submit();}
	function openform() {
		  document.getElementById("myform").style.display = "block";
		}

		function closeform() {
		  document.getElementById("myform").style.display = "none";
		}
		function cod(){
		 			alert("You Confirmed their request.");
			document.getElementById("form1").submit();}
		function doc(){
 			alert("You Declined their request.");
	document.getElementById("form1").submit();}
  

</script>

</body>
</html>