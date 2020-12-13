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
    <title>User's page 1</title>
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
    background-color: red;
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


#modal{
    display: none;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 50%;
    height: 70%;
    z-index: 999;
    border-radius: 5px;
    box-shadow: 0 0 0 999px rgba(0, 0, 0, 0.5)  ;
    background-color: rgb(250, 250, 250);

}

#modal i{
    position: absolute;
    right: 2%;
    top: 3%;
    cursor: pointer;

}

#modal form{
    padding: 50px;
}

#modal form #registerdet{
    padding: 15px 0px;
}

#modal form p{
    margin-bottom: 10px;
    font-size: 18px;
    font-weight: 550;
    color: rgb(65, 64, 64);
}

#modal form #fields{
    padding: 15px 0px;
}

#modal form #fields #fdet{
    display: flex;
    justify-content: space-between;
    align-items: center;

}

#modal form #fields #line{
    width: 260px;
    height: 2px;
    background-color: rgb(248, 193, 73);
    margin-right: 100px;
}

#modal form #cnfcancel{
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 100px 150px;
}

#modal form #cnfcancel button{
    width: 150px;
    height: 50px;
    outline: none;
    border: none 2px #fff;
    color: #fff;
    background-color: rgb(248, 193, 73);
    font-weight: 600;
    font-size: 15px;
}

#modal form #cnfcancel button:hover{
    font-size: 15px;
    background-color: rgb(255, 180, 20);


}
    </style>
    <div id="nav"></div>
    <div id="back">
        <div id="left">
            <h2>User's Information</h2>
            
            <form action="">
                <div id="bt">
                    <button id="rbt">First Name</button>
                    <div class="details" id="details1"><span style="color:black;">${firstname}</span></div>
                </div>
                <div id="bt">
                    <button id=>Last Name</button>
                    <div class="details" id="details2"><span style="color:black;">${lastname}</span></div>
                </div>

                <div id="bt">
                    <button >Phone Number</button>
                    <div class="details" id="details3"><span style="color:black;">${contnum}</span></div>
                </div>
                <div id="bt">
                    <button >Address</button>
                    <div class="details" id="details4"><span style="color:black;">${address}</span></div>
                </div>
                <div id="bt">
                    <button>City</button>
                    <div class="details" id="details5"><span style="color:black;">${city}</span></div>
                </div>
                <div id="bt">
                    <button>State</button>
                    <div class="details" id="details6"><span style="color:black;">${state}</span></div>
                </div>
                <div id="bt">
                    <button >Pincode</button>
                    <div class="details" id="details7"><span style="color:black;">${pincode}</span></div>
                </div>
                <div id="bt">
                    <button >Signed up as</button>
                    <div class="details" id="details8"><span style="color:black;">${signedupasa}</span></div>
                </div>
                <div id="bt">
                    <button id=>Gender</button>
                    <div class="details" id="details9"><span style="color:black;">${gender}</span></div>
                </div>

                <div id="bt">
                    <button >Log out</button>
                </div>



            </form>
        </div>
        <div id="right">
            
            <div id="links">
                <a href="">Electricians</a>
                <a href="">Plumbers</a>
                <a href="">Repairers</a>
            </div>
              <table>
             <%

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
String sql ="SELECT * FROM signup WHERE signedupasa='End-User'";
resultset = statement.executeQuery(sql);
while(resultset.next()){
%>

            <div id="registeruserlist">
                <div id="registeruser">
                    <div id="info">
                        
                          
                            <tr><p><%=resultset.getString("firstname") %></p></tr>
                            <tr><p><%=resultset.getString("lastname") %></p></tr>
                            <tr><p><%=resultset.getString("email") %></p></tr>
                           <tr> <p><%=resultset.getString("contnum") %></p></tr>
                        
                       
						
						 <button >Select</button>
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
          
            </table>
            <div id="modal">
                <i class="fa fa-times"></i>
                
          <form action="" id="form" style="display:none">
                    <div id="registerdet">
                        <p>Provider's Name</p>
                        <p>Preffered Work Areas</p>
                        <p>Contact Number</p>
                    </div>

                    <div id="fields">
                        <div id="fdet">
                            <p>Address</p>
                            <div id="line"></div>
                        </div>
                        <div id="fdet">
                            <p>Date of coming</p>
                            <div id="line"></div>
                        </div>
                        <div id="fdet">
                            <p>Approx time to come</p>
                            <div id="line"></div>
                        </div>
                        <div id="fdet">
                            <p>Contact Number</p>
                            <div id="line"></div>
                        </div>

                        
                        
                        
                    </div>

                    <div id="payment">

                    </div>

                    <div id="cnfcancel">
                        <button>confirm</button>
                        
                    </div>

                </form></div>
            </div>
        </div>



    <script>
        var btn = document.querySelector('#info button');
        var modal = document.querySelector('#modal');
        var crossbtn = document.querySelector('#modal i');


        btn.addEventListener('click', function(){
        modal.style.display = 'initial';
        })
        crossbtn.addEventListener('click',function(){
        modal.style.display = 'none';
})
function openForm() {
  document.getElementById("form").style.display = "block";
  
}




    </script>

    
</body>
</html>