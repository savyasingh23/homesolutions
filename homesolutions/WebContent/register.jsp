<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
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
}

#left{
    position: relative;
    width: 30%;
    height: 100%;
    overflow: hidden;
}


#left #sup{
    display: flex;
    flex-direction: column;
    position: absolute;
    top: 10%;
    left: 50%;
    transform: translate(-50%,-50%);
}

#left #sup h3{
    text-align: center;
    margin-bottom: 10px;
    color: #fff;
    
}

#left button{
    width: 150px;
    height: 50px;
    outline: none;
    margin-left: 40px;
    border: solid 2px #fff;
    color: #fff;
    background-color: transparent;
    font-weight: 600;
    font-size: 15px;

}

#left button:hover{
    font-size: 16px;
    background-color: rgb(255, 180, 20);
}
#left p{
    font-size: 10px;
    text-align: center;
    margin-bottom: 10px;
    color: #fff;
}

#right{
    position: relative;
    width: 75%;
    height: 100%;
    overflow: hidden;

}

#right #forms{
    display: flex;
    justify-content: space-between;
}

#right #forms form{
    display: flex;
}

#right h2{
    position: absolute;
    top: 10%;
    left: 21%;
    transform: translate(-50%,-50%);
    font-size: 40px;
    font-weight: 800;

}

#right form{
    margin-left: 275px;
    display: flex;
    position: absolute;
    top: 50%;
    left: 25%;
    transform: translate(-50%,-50%);

}

#right form input{
    border: none;
    border-bottom: 5px #333;
    width: 500px;
    height: 50px;
    outline: none;
    margin-bottom: 5px;

}

#right form .line{
    width: 400px;
    height: 1px;
    background-color: rgb(248, 193, 73);
    margin-bottom: 30px;
}

#right form button{
    width: 150px;
    height: 50px;
    border: none;
    outline: none;
    margin-left: 120px;
    background-color:  rgb(248, 193, 73);
    color: #fff;
    font-weight: 600;
    font-size: 15px;
}




#forms #confirmation{
    display: flex;
    position: absolute;
    top: 100%;
    left: 60%;
    justify-content: space-between;
    align-items: center;
    transform: translate(-50%,-50%);
    width: 800px;
    color: rgb(126, 124, 124);
}

#forms #buttons button:nth-child(1){
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
    top: 85%;
    left: 20%;
    transform: translate(-50%,-50%);

}

#forms #buttons a{
    width: 150px;
    height: 50px;
    border: none;
    outline: none;
    margin-left: 120px;
    color: #fff;
    font-weight: 600;
    font-size: 15px;
    position: absolute;
    top: 82.7%;
    left: 35%;
    transform: translate(-50%,-50%);

}

#forms #buttons button:nth-child(1):hover{
    font-size: 16px;
    background-color: rgb(255, 180, 20);
}

#forms #buttons button:nth-child(2):hover{
    font-size: 16px;
    background-color: rgb(255, 180, 20);
}

#gcheckbox{
    font-weight: 5px;
    font-size: 12px;
    padding-top: 20px;
    padding-bottom: 20px;
    width: 370px;
    display: flex;
    color: rgb(153, 153, 153);
    justify-content: space-between;
    align-items: center;
    margin-left: -30px;
  }


#gcheckbox input[type=radio] {
    border: 0px;
    width: 100%;
    height: 1.5em;
}

#forms form h3{
    color: rgb(126, 125, 125);
    font-size: 15px;
    font-weight: 150;
}

#select{
    color: rgb(248, 193, 73) ;
    font-weight: 100;
    width: 400px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    position: absolute;
    top: -16%;
    left: 20%;
    transform: translate(-50%,-50%);
}

input[type=checkbox] {
    margin-right: 1500px;
    zoom: .25;
}

#select select{
    font-family: "Montserrat";
    font-size: 1rem;
    color: #ffff;
    width: 175px;
    height: 30px;
    border: none;
    outline: none;
    background-color: rgb(248, 193, 73);
    margin-top: 20px;
    margin-bottom: 20px;
    padding: 0px 4px;
    text-indent: 20%;
}


       


    </style>
 
    <div id="back">
        <div id="left">
          <div id="sup">
            <h3>Already Registered?</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Officia quae magnam porro itaque maiores provident.</p>
            <a href="signin.jsp"><button>Sign in</button></a>
          </div>
          <svg id="Group_4" data-name="Group 4" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="490" height="800" viewBox="0 0 490 800">
            <defs>
              <linearGradient id="linear-gradient" x1="0.329" y1="0.181" x2="0.94" y2="0.959" gradientUnits="objectBoundingBox">
                <stop offset="0" stop-color="#ef9f00"/>
                <stop offset="1" stop-color="#fffefc"/>
                <stop offset="1" stop-color="#fff"/>
              </linearGradient>
            </defs>
            <rect id="Rectangle_1" data-name="Rectangle 1" width="490" height="800" fill="url(#linear-gradient)"/>
            <g id="Group_2" data-name="Group 2" transform="translate(28 205.436)">
              <g id="Group_3" data-name="Group 3">
                <path id="Path_33" data-name="Path 33" d="M687.8,606.834H273.587a1.087,1.087,0,0,1,0-2.174H687.8a1.087,1.087,0,0,1,0,2.174Z" transform="translate(-272.5 -220.145)" fill="#3f3d56"/>
                <circle id="Ellipse_8" data-name="Ellipse 8" cx="29.354" cy="29.354" r="29.354" transform="translate(187.06 185.561)" fill="#2f2e41"/>
                <path id="Path_34" data-name="Path 34" d="M173.467,380.641l-.777-13.3L223.642,358l1.148,19.639Z" transform="translate(15.056 22.711)" fill="#ffb8b8"/>
                <path id="Path_35" data-name="Path 35" d="M16.185,0H41.89V16.185H0A16.185,16.185,0,0,1,16.185,0Z" transform="translate(190.042 364.162) rotate(86.655)" fill="#2f2e41"/>
                <path id="Path_36" data-name="Path 36" d="M197.976,381.332l-8.464,10.3-43.744-27.744,12.491-15.2Z" transform="translate(12.709 21.898)" fill="#ffb8b8"/>
                <path id="Path_37" data-name="Path 37" d="M16.185,0H41.89V16.185H0A16.185,16.185,0,0,1,16.185,0Z" transform="matrix(0.635, -0.773, 0.773, 0.635, 182.959, 430.964)" fill="#2f2e41"/>
                <path id="Path_38" data-name="Path 38" d="M444.358,578.106l-5.784,27.265a4.349,4.349,0,0,0,4.184,5.251l56.857.917a4.349,4.349,0,0,0,4.353-5.1L499,578.253a4.349,4.349,0,0,0-4.283-3.593h-46.1A4.349,4.349,0,0,0,444.358,578.106Z" transform="translate(-258.029 -222.76)" fill="#2f2e41"/>
                <path id="Path_39" data-name="Path 39" d="M458.121,588.4s-55.446-34.79-66.318-16.308c-5.436,9.241-2.718,18.21,1.359,24.869a37.65,37.65,0,0,0,15.658,14.015l44.952,22,16.308-17.395L459.208,605.8Z" transform="translate(-262.364 -223.456)" fill="#2f2e41"/>
                <path id="Path_40" data-name="Path 40" d="M479.78,582.1s71.754-20.656,57.621,18.482S469.995,624.5,469.995,624.5l-5.436-16.308,18.482-13.046Z" transform="translate(-255.756 -222.587)" fill="#2f2e41"/>
                <circle id="Ellipse_9" data-name="Ellipse 9" cx="26.702" cy="26.702" r="26.702" transform="translate(190.08 194.915)" fill="#ffb8b8"/>
                <path id="Path_41" data-name="Path 41" d="M477.092,594.241a143.505,143.505,0,0,1-32.895-4.334l-.318-.087-14.9-68.541a25.249,25.249,0,0,1,16.235-29.292,87.474,87.474,0,0,1,55.772-1.114h0a25.516,25.516,0,0,1,17,30.185l-16.643,68.7-.234.112C494.189,593.151,485.54,594.241,477.092,594.241Z" transform="translate(-258.911 -230.416)" fill="#ccc"/>
                <path id="Path_42" data-name="Path 42" d="M454.828,593.031a10.932,10.932,0,0,1,15.737-5.775L499.9,561.789l2.654,20.013-28.268,21.115a10.992,10.992,0,0,1-19.463-9.887Z" transform="translate(-256.663 -223.882)" fill="#ffb8b8"/>
                <path id="Path_43" data-name="Path 43" d="M481.19,604.727a4.928,4.928,0,0,1-1.409-.207,4.841,4.841,0,0,1-3.221-3.062l-3.541-10.033a4.862,4.862,0,0,1,1.416-5.33l39.974-24-15.758-70.3.4-.1c.163-.04,16.308-3.715,22.924,13.927,4.633,12.356,21.778,39.222,20.568,57.378a16.182,16.182,0,0,1-13.4,14.924l-45,25.78a4.844,4.844,0,0,1-2.961,1.016Z" transform="translate(-255.043 -230.023)" fill="#ccc"/>
                <path id="Path_44" data-name="Path 44" d="M488.464,590.838a10.932,10.932,0,0,0-15.737-5.775L443.387,559.6l-2.654,20.013L469,600.725a10.992,10.992,0,0,0,19.463-9.887Z" transform="translate(-257.833 -224.074)" fill="#ffb8b8"/>
                <path id="Path_45" data-name="Path 45" d="M466.792,604.727a4.844,4.844,0,0,1-2.961-1.016l-48.258-23.606a16.182,16.182,0,0,1-13.4-14.924c-1.21-18.155,19.2-47.2,23.83-59.552,6.615-17.642,22.761-13.969,22.924-13.927l.4.1-19.019,72.473L473.547,586.1a4.862,4.862,0,0,1,1.416,5.33l-3.541,10.033a4.841,4.841,0,0,1-3.221,3.062A4.93,4.93,0,0,1,466.792,604.727Z" transform="translate(-261.199 -230.023)" fill="#ccc"/>
                <path id="Path_46" data-name="Path 46" d="M522.929,611.153H426.169a7.619,7.619,0,0,1-7.61-7.61V550.27a7.619,7.619,0,0,1,7.61-7.61h96.759a7.619,7.619,0,0,1,7.61,7.61v53.272A7.619,7.619,0,0,1,522.929,611.153Z" transform="translate(-259.766 -225.55)" fill="#5c5c5d"/>
                <circle id="Ellipse_10" data-name="Ellipse 10" cx="6.523" cy="6.523" r="6.523" transform="translate(208.26 344.833)" fill="#fff"/>
                <path id="Path_47" data-name="Path 47" d="M447.129,456.183c-1.583-4.014,1.014-8.8,4.866-10.742s8.5-1.575,12.62-.293c3.463,1.077,6.708,2.746,10.086,4.064a22.571,22.571,0,0,0,10.6,1.888c3.6-.407,7.189-2.427,8.664-5.74,1.528-3.434.489-7.625-1.865-10.555a20.439,20.439,0,0,0-9.363-6.017c-7.945-2.8-17.121-2.881-24.5,1.188s-12.388,12.731-10.863,21.015" transform="translate(-257.316 -235.652)" fill="#2f2e41"/>
                <path id="Path_48" data-name="Path 48" d="M305.292,599.3a132.683,132.683,0,0,1,10.982-41.876q2.478-5.536,5.456-10.829a.809.809,0,0,0-1.4-.816,134.516,134.516,0,0,0-14.968,41.294q-1.124,6.07-1.689,12.226c-.1,1.035,1.521,1.029,1.616,0Z" transform="translate(-269.782 -225.311)" fill="#e6e6e6"/>
                <circle id="Ellipse_11" data-name="Ellipse 11" cx="10.235" cy="10.235" r="10.235" transform="translate(45.626 303.407)" fill="#2f2e41"/>
                <path id="Path_49" data-name="Path 49" d="M306.209,598.033a86.077,86.077,0,0,1,7.124-27.166q1.608-3.592,3.539-7.025a.525.525,0,0,0-.905-.529,87.266,87.266,0,0,0-9.711,26.789q-.729,3.938-1.1,7.932C305.1,598.7,306.148,598.7,306.209,598.033Z" transform="translate(-269.653 -223.771)" fill="#e6e6e6"/>
                <circle id="Ellipse_12" data-name="Ellipse 12" cx="6.64" cy="6.64" r="6.64" transform="translate(43.12 328.472)" fill="#2f2e41"/>
                <path id="Path_50" data-name="Path 50" d="M306,597.375a86.077,86.077,0,0,1-11.092-25.8q-.941-3.821-1.53-7.716a.525.525,0,0,0-1.039.14,87.266,87.266,0,0,0,8.82,27.1q1.847,3.553,4.014,6.928C305.541,598.587,306.365,597.939,306,597.375Z" transform="translate(-270.77 -223.74)" fill="#e6e6e6"/>
                <circle id="Ellipse_13" data-name="Ellipse 13" cx="6.64" cy="6.64" r="6.64" transform="translate(14.924 328.005)" fill="#2f2e41"/>
                <path id="Path_51" data-name="Path 51" d="M286.159,601.495V588.448a4.9,4.9,0,0,1,4.892-4.892h30.441a4.9,4.9,0,0,1,4.892,4.892v13.046a4.9,4.9,0,0,1-4.892,4.892H291.051a4.9,4.9,0,0,1-4.892-4.892Z" transform="translate(-271.309 -221.985)" fill="#f2f2f2"/>
                <path id="Path_52" data-name="Path 52" d="M588.985,615.158c0,7.151-5.8,10.4-12.947,10.4s-12.947-3.25-12.947-10.4,2.877-15.493,12.947-12.617C586.108,598.226,588.985,608.007,588.985,615.158Z" transform="translate(-247.165 -220.422)" fill="#ff6584"/>
                <path id="Path_53" data-name="Path 53" d="M574.9,606.953a2.07,2.07,0,0,1-2.056-1.8c-.429-3.567-2.792-10.554-3.787-13.392h0a1.851,1.851,0,0,1,.239-1.7,1.942,1.942,0,0,1,2.9-.209,1.854,1.854,0,0,1,.509,1.388c-.2,3.643,2.46,9.529,4.06,12.714a2.074,2.074,0,0,1-1.641,3,1.91,1.91,0,0,1-.219.012Z" transform="translate(-246.655 -221.484)" fill="#3f3d56"/>
                <path id="Path_54" data-name="Path 54" d="M584.088,598.943c4.494-3.678.968-11.206-4.657-9.761a4.543,4.543,0,0,0-2.026,1.081c-3.45,3.26-3.985,11.6-3.985,11.6S579.513,602.688,584.088,598.943Z" transform="translate(-246.265 -221.51)" fill="#3f3d56"/>
              </g>
            </g>
          </svg>
          
                                  
        </div>
        <div id="right">
            <h2>Registration Form</h2><br>
          
            <div id="forms">
             <form action="<%=request.getContextPath()%>/signup2"  id="form1" method="post" name="form">
                 <div id="select">
              <h4>User Or Provider?</h4>
              <select name="signedupasa" id="selectone">
                <option value="0">Select</option>
                <option value="Plumber" >Plumber</option>
                <option value="Electrician" >Electrician</option>
                <option value="Repairer" >Repairer</option>
                <option value="End-User" >End- User</option>  
              </select>
            </div> 
                <div id="formleft">
                
                  <input type="text" placeholder="Firstname" name="firstname" required> 
                  <div class="line"></div>
                  <input type="text" placeholder="Lastname" name="lastname" required>
                  <div class="line"></div>
                  <h3>Gender</h3>
                  <div id="gcheckbox" >
                  <input type="radio" value="male" name="gender"/>
                  <h4>Male</h4> 
                  <input type="radio"  value="female" name="gender" />
                  <h4>Female</h4> 
                  <input type="radio"  value="other" name="gender"/>
                  <h4>Other</h4> 
                  </div>
                  
                  <input type="email" placeholder="email" name="email" required>
                  <div class="line"></div>
                </div>

                <div id="formright">
                  <input type="text" placeholder="Address" name="address" required> 
                  <div class="line"></div>
                  <input type="text" placeholder="Pincode" name="pincode" required>
                  <div class="line"></div>
                  <input type="text" placeholder="City" name="city"required>
                  <div class="line"></div>
                  <input type="text" placeholder="State" name="state"required>
                  <div class="line"></div>
  
                </div>
				             
				  <div id="confirmation">
                <p>I agree to all terms and conditions</p>
                <div class="checkbox">
                  <input type="checkbox" name="agreeandcontinue" value="agreeandcontinue" id="mycheck">
 				 </div>
                  </div>
          <br>
               
  
          </form>
           
                
               <div id="buttons">
                <button  onclick="myFunction()"> Confirm</button>
                <a href="project1.jsp"><button >Cancel</button></a>
  
              </div>
             </div>

        </div>
    </div>
    
    
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>

    <script>
      gsap.from('#back ',{duration: 2.5 , ease: 'expo.inOut', y:1000 , opacity:0})
      function myFunction() {
    	  
    	  var x = document.forms["form"]["firstname"].value;
    	  if (x == "") {
    	    alert(" Filled Name must be filled out");
    	    return false;
    	  }
    	  var y = document.forms["form"]["lastname"].value;
    	  if (y == "") {
    	    alert(" Last Name must be filled out");
    	    return false;
    	  }
    	  var z = document.forms["form"]["gender"].value;
    	  if (z == "") {
    	    alert(" Gender must be filled out");
    	    return false;
    	  }
    	  var a = document.forms["form"]["state"].value;
    	  if (a == "") {
    	    alert(" State must be filled out");
    	    return false;
    	  }
    	  var b = document.forms["form"]["city"].value;
    	  if (b == "") {
    	    alert(" City  must be filled out");
    	    return false;
    	  }
    	  var c = document.forms["form"]["address"].value;
    	  if (c == "") {
    	    alert(" Address must be filled out");
    	    return false;
    	  }
    	  var d = document.forms["form"]["pincode"].value;
    	  if (d == "" || d.value.length!=6) {
    	    alert(" Pincode must be filled out or Invalid Pincode");
    	    return false;
    	  }
    	  var e = document.forms["form"]["email"].value;
    	  if (e == "") {
    	    alert(" Email must be filled out");
    	    return false;
    	  }
    	  
    	  var card = document.getElementById("selectone");
    	 
    	  if((!(document.getElementById("mycheck").checked)) && card.selectedIndex != 0) {
    	       alert("Please check the check box");
    	  }
    	  else if(document.getElementById("mycheck").checked && card.selectedIndex != 0 && x!="" && y!="" && z!="" && a!="" && b!="" && c!="" && d!="" && e!="" && d.value.length==6) {
  			document.getElementById("form1").submit();
  			}
    	  else  {
	    	       alert('select one answer from the ( User or Provider?)');

			}
    	 
    	  
      }
    </script>


    <script src="script2.js"></script>
    
</body>
</html>