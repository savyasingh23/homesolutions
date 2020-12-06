<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sign in</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
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
    width: 50%;
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
    margin-left: 120px;
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
    width: 50%;
    height: 100%;

}

#right h2{
    position: absolute;
    top: 20%;
    left: 45%;
    transform: translate(-50%,-50%);
    font-size: 35px;
    font-weight: 800;

}

#right form{
    display: flex;
    flex-direction: column;
    position: absolute;
    top: 50%;
    left: 50%;
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

#right button{
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

#right form button:hover{
    font-size: 16px;
    background-color: rgb(255, 180, 20);


}

  </style>
    <div id="back">
        <div id="left">
          <div id="sup">
            <h3>New here?</h3>
            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Officia quae magnam porro itaque maiores provident.</p>
            <a href="signin.jsp"><button>Sign In</button></a>
          </div>
            <svg id="Group_4" data-name="Group 4" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="763" height="800" viewBox="0 0 763 800">
                <defs>
                  <linearGradient id="linear-gradient" x1="0.329" y1="0.181" x2="0.94" y2="0.959" gradientUnits="objectBoundingBox">
                    <stop offset="0" stop-color="#ef9f00"/>
                    <stop offset="1" stop-color="#fffefc"/>
                    <stop offset="1" stop-color="#fff"/>
                  </linearGradient>
                </defs>
                <rect id="Rectangle_1" data-name="Rectangle 1" width="763" height="800" fill="url(#linear-gradient)"/>
                <g id="Group_2" data-name="Group 2" transform="translate(161.352 226)">
                  <path id="Path_9" data-name="Path 9" d="M118.869,344.42l34.614-54.433L75.964,240.694,35.931,303.649l64.118,40.771Z" transform="translate(-16.148 -106.687)" fill="#f0f0f0"/>
                  <path id="Path_10" data-name="Path 10" d="M403.24,585.259H317.5V568h85.74Zm-84.626-1.113h83.513V569.114H318.613Z" transform="translate(-251.468 -330.545)" fill="#3f3d56"/>
                  <ellipse id="Ellipse_2" data-name="Ellipse 2" cx="6" cy="5" rx="6" ry="5" transform="translate(136.648 241)" fill="#2f2e41"/>
                  <ellipse id="Ellipse_3" data-name="Ellipse 3" cx="6" cy="5" rx="6" ry="5" transform="translate(119.648 241)" fill="#2f2e41"/>
                  <ellipse id="Ellipse_4" data-name="Ellipse 4" cx="5.5" cy="5" rx="5.5" ry="5" transform="translate(104.648 241)" fill="#2f2e41"/>
                  <ellipse id="Ellipse_5" data-name="Ellipse 5" cx="5.5" cy="5" rx="5.5" ry="5" transform="translate(89.648 241)" fill="#2f2e41"/>
                  <ellipse id="Ellipse_6" data-name="Ellipse 6" cx="5.5" cy="5" rx="5.5" ry="5" transform="translate(73.648 241)" fill="#2f2e41"/>
                  <path id="Path_11" data-name="Path 11" d="M588.9,204.413V162.1h21.157V141.5H506.5V245.056h88.523V234.931A14.372,14.372,0,0,1,609.4,220.559h.661V204.413Z" transform="translate(-333.881 -141.5)" fill="#f0f0f0"/>
                  <rect id="Rectangle_3" data-name="Rectangle 3" width="70" height="14" transform="translate(301.648 267)" fill="#afafaf"/>
                  <rect id="Rectangle_4" data-name="Rectangle 4" width="100" height="14" transform="translate(284.648 195)" fill="#f0f0f0"/>
                  <rect id="Rectangle_5" data-name="Rectangle 5" width="435" height="1" transform="translate(0.648 343)" fill="#3f3d56"/>
                  <path id="Path_12" data-name="Path 12" d="M806.018,547.514H679.429A14.946,14.946,0,0,1,664.5,532.585V297.429A14.946,14.946,0,0,1,679.429,282.5H806.018a14.946,14.946,0,0,1,14.929,14.929V532.584a14.946,14.946,0,0,1-14.929,14.929Zm-126.589-263.9a13.831,13.831,0,0,0-13.816,13.815V532.584A13.831,13.831,0,0,0,679.429,546.4H806.018a13.831,13.831,0,0,0,13.816-13.815V297.429a13.831,13.831,0,0,0-13.815-13.815Z" transform="translate(-402.544 -203.998)" fill="#2f2e41"/>
                  <path id="Path_13" data-name="Path 13" d="M775.341,297.181a3.341,3.341,0,1,1,3.341-3.341A3.34,3.34,0,0,1,775.341,297.181Zm0-5.568a2.227,2.227,0,1,0,2.227,2.227A2.227,2.227,0,0,0,775.341,291.613Z" transform="translate(-450.945 -207.544)" fill="#f0f0f0"/>
                  <rect id="Rectangle_6" data-name="Rectangle 6" width="24.497" height="1.114" transform="translate(332.906 85.74)" fill="#f0f0f0"/>
                  <path id="Path_14" data-name="Path 14" d="M892.04,311.5v44.54A44.542,44.542,0,0,1,847.5,311.5Z" transform="translate(-483.658 -216.852)" fill="#6d6d6d"/>
                  <path id="Path_15" data-name="Path 15" d="M819.018,544.892H681.5V310.5H819.018Zm-136.4-1.114H817.9V311.613H682.614Z" transform="translate(-410.079 -216.409)" fill="#2f2e41"/>
                  <ellipse id="Ellipse_7" data-name="Ellipse 7" cx="15.5" cy="15" rx="15.5" ry="15" transform="translate(360.648 106)" opacity="0.1"/>
                  <ellipse id="Ellipse_8" data-name="Ellipse 8" cx="15.5" cy="16" rx="15.5" ry="16" transform="translate(358.648 107)" fill="#afafaf"/>
                  <rect id="Rectangle_7" data-name="Rectangle 7" width="21" height="9" transform="translate(276.648 103)" fill="#afafaf"/>
                  <rect id="Rectangle_8" data-name="Rectangle 8" width="20" height="9" transform="translate(288.648 177)" fill="#3f3d56"/>
                  <path id="Path_16" data-name="Path 16" d="M815.942,500.976H713.5V486.5H815.942Zm-101.329-1.113H814.829V487.614H714.614Z" transform="translate(-424.263 -294.421)" fill="#3f3d56"/>
                  <rect id="Rectangle_9" data-name="Rectangle 9" width="100" height="13" transform="translate(284.648 238)" fill="#f0f0f0"/>
                  <rect id="Rectangle_10" data-name="Rectangle 10" width="20" height="8" transform="translate(288.648 220)" fill="#3f3d56"/>
                  <path id="Path_17" data-name="Path 17" d="M815.942,576.976H713.5V562.5H815.942Zm-101.329-1.114H814.829V563.614H714.614Z" transform="translate(-424.263 -328.108)" fill="#3f3d56"/>
                  <path id="Path_18" data-name="Path 18" d="M812.651,629.089H742.5V613.5h70.151Zm-69.037-1.114h67.924V614.614H743.614Z" transform="translate(-437.655 -350.713)" fill="#3f3d56"/>
                  <path id="Path_19" data-name="Path 19" d="M883.633,498.067a5.568,5.568,0,0,1-9.86,3.547l-.006-.006a5.567,5.567,0,1,1,9.7-4.86.005.005,0,0,0,0,0l0,0A5.694,5.694,0,0,1,883.633,498.067Z" transform="translate(-494.738 -297.08)" fill="#6d6d6d"/>
                  <path id="Path_20" data-name="Path 20" d="M884.521,499.84a5.568,5.568,0,0,1-9.86,3.546l-.006-.006a5.7,5.7,0,0,1-.156-1.314,5.568,5.568,0,0,1,9.86-3.547,0,0,0,0,0,0,0l0,0A5.691,5.691,0,0,1,884.521,499.84Z" transform="translate(-495.626 -298.853)" opacity="0.1"/>
                  <ellipse id="Ellipse_9" data-name="Ellipse 9" cx="6" cy="5" rx="6" ry="5" transform="translate(379.648 199)" fill="#afafaf"/>
                  <path id="Path_21" data-name="Path 21" d="M883.633,574.067a5.568,5.568,0,0,1-9.86,3.546l-.006-.005a5.567,5.567,0,1,1,9.7-4.86.005.005,0,0,0,0,0l0,0a5.7,5.7,0,0,1,.156,1.314Z" transform="translate(-494.738 -330.767)" fill="#6c63ff"/>
                  <path id="Path_22" data-name="Path 22" d="M884.521,575.84a5.568,5.568,0,0,1-9.86,3.546l-.006-.006a5.7,5.7,0,0,1-.156-1.314,5.568,5.568,0,0,1,9.86-3.546,0,0,0,0,0,0,0l0,0A5.691,5.691,0,0,1,884.521,575.84Z" transform="translate(-495.626 -332.54)" fill="#6d6d6d" opacity="0.1"/>
                  <ellipse id="Ellipse_10" data-name="Ellipse 10" cx="6" cy="5" rx="6" ry="5" transform="translate(379.648 242)" fill="#afafaf"/>
                  <rect id="Rectangle_11" data-name="Rectangle 11" width="28" height="29" transform="translate(262.648 27)" fill="#f0f0f0"/>
                  <path id="Path_23" data-name="Path 23" d="M864.181,216.862a6.681,6.681,0,1,1,6.681-6.681A6.681,6.681,0,0,1,864.181,216.862Zm0-12.249a5.568,5.568,0,1,0,5.568,5.568A5.568,5.568,0,0,0,864.181,204.613Z" transform="translate(-488.091 -168.981)" fill="#fff"/>
                  <path id="Path_24" data-name="Path 24" d="M593.976,382.976H579.5V368.5h14.476Zm-13.362-1.113h12.248V369.613H580.614Z" transform="translate(-366.262 -242.117)" fill="#3f3d56"/>
                  <path id="Path_25" data-name="Path 25" d="M989.976,576.976H975.5V562.5h14.476Zm-13.362-1.114h12.249V563.614H976.614Z" transform="translate(-540.394 -328.108)" fill="#3f3d56"/>
                  <path id="Path_26" data-name="Path 26" d="M488.5,398.5l2.484,1.338,8.453,4.556,13.646,7.352L521.038,397a11.984,11.984,0,0,0-4.868-16.251,15.918,15.918,0,0,0-18.585,2.522l0,0a15.935,15.935,0,0,0-2.993,3.939Z" transform="translate(-326.2 -246.697)" fill="#2f2e41"/>
                  <path id="Path_27" data-name="Path 27" d="M347.277,541.609l-1.667,18.339-6.252.833-4.168-20.84Z" transform="translate(-147.624 -239.328)" fill="#ffb8b8"/>
                  <path id="Path_28" data-name="Path 28" d="M536.634,717.18s7.919-4.168,9.586-.834c0,0-1.25,10,3.751,11.254s7.086,10,0,10.837S538.3,736.77,535.8,736.77s0-8.753,0-8.753Z" transform="translate(-346.542 -395.727)" fill="#2f2e41"/>
                  <path id="Path_29" data-name="Path 29" d="M266.316,541.609l1.667,18.339,6.252.833,4.168-20.84Z" transform="translate(-117.337 -239.328)" fill="#ffb8b8"/>
                  <path id="Path_30" data-name="Path 30" d="M467.78,717.18s-7.919-4.168-9.586-.834c0,0,1.25,10-3.751,11.254s-7.086,10,0,10.837,11.671-1.667,14.172-1.667,0-8.753,0-8.753Z" transform="translate(-309.251 -395.727)" fill="#2f2e41"/>
                  <circle id="Ellipse_11" data-name="Ellipse 11" cx="10.837" cy="10.837" r="10.837" transform="translate(172.491 133.477)" fill="#ffb8b8"/>
                  <path id="Path_31" data-name="Path 31" d="M464.067,421.963l8.753,13.755,10.42-.834,17.089,1.25s1.613-3.226,2.93-6.365a24.661,24.661,0,0,0,1.655-4.889c.417-2.918-5.418-5.835-5.418-5.835s-.229-.042-.613-.133c-.508-.121-1.292-.321-2.151-.613-1.938-.659-4.268-1.776-4.739-3.422-.834-2.918,5.418-7.086,5.418-7.086l-7.5-7.086s-6.665,9.257-14.759,11.366a12.9,12.9,0,0,1-1.426.292l-.071.012C464.9,413.627,464.067,421.963,464.067,421.963Z" transform="translate(-315.442 -256.393)" fill="#ffb8b8"/>
                  <path id="Path_32" data-name="Path 32" d="M460.784,432.149,456.2,435.9s-3.751,17.922-2.5,22.924-.417,9.586-.417,10.42-3.751,32.093-3.751,32.093-7.5,16.672.417,15,5-18.339,5-18.339l9.586-29.176V444.236Z" transform="translate(-307.689 -270.33)" fill="#ffb8b8"/>
                  <path id="Path_33" data-name="Path 33" d="M530.117,438.138l3.334,2.5,1.667,35.011,12.5,30.01s9.17,14.588,3.334,15-9.586-15.005-9.586-15.005L530.117,476.9l-1.667-27.926Z" transform="translate(-343.786 -272.984)" fill="#ffb8b8"/>
                  <path id="Path_34" data-name="Path 34" d="M477.739,442.629s8.336,5.835,21.674,3.751c0,0,3.751,7.5,1.667,11.67s2.5,14.171,3.334,15.422,10.42,27.092,13.754,55.018,12.5,47.1,4.585,49.6-24.174,5.418-25.842,2.918-4.168-64.6-4.168-64.6l-4.585,23.758s6.252,40.43,1.667,41.263-33.344-1.667-32.51-6.669,9.17-31.26,9.17-31.26-.417-52.517,7.919-62.52c0,0,3.334-5.418-1.25-12.5s-4.168-18.339-4.168-18.339S472.32,450.132,477.739,442.629Z" transform="translate(-312.396 -274.975)" fill="#2f2e41"/>
                  <path id="Path_35" data-name="Path 35" d="M282.913,279.913l7.015,15.434,1.667-.833-7.257-14.893Z" transform="translate(-124.643 -123.942)" fill="#2f2e41"/>
                  <path id="Path_36" data-name="Path 36" d="M522.737,432.306,528,443.889l1.263-.113-.429-1.971-3.947-8.886C524.379,432.8,523.6,432.6,522.737,432.306Z" transform="translate(-341.322 -270.399)" fill="#2f2e41"/>
                  <path id="Path_37" data-name="Path 37" d="M492.716,399.846a6.861,6.861,0,0,0,12.587,1.225c-5.273-6.894-.75-11.224,7.815-14.5a6.855,6.855,0,0,0-.738-7.6,15.972,15.972,0,0,0-13.067,4.3l0,0-6.085,11.287A6.828,6.828,0,0,0,492.716,399.846Z" transform="translate(-327.946 -246.7)" fill="#2f2e41"/>
                  <ellipse id="Ellipse_12" data-name="Ellipse 12" cx="1.459" cy="2.501" rx="1.459" ry="2.501" transform="translate(175.38 143.063)" fill="#ffb8b8"/>
                  <path id="Path_38" data-name="Path 38" d="M522.408,388.973l12.529,5.677,2.3-5.068a12,12,0,0,0-2.417-5.056l-8.624-3.905Z" transform="translate(-341.156 -247.49)" fill="#2f2e41"/>
                  <circle id="Ellipse_13" data-name="Ellipse 13" cx="5.5" cy="5.5" r="5.5" transform="translate(206.648 242)" fill="#2f2e41"/>
                  <circle id="Ellipse_14" data-name="Ellipse 14" cx="3.639" cy="3.639" r="3.639" transform="translate(27.851 279.142)" fill="#ff6584"/>
                  <rect id="Rectangle_12" data-name="Rectangle 12" width="1.114" height="41.429" transform="translate(48.759 301.744)" fill="#3f3d56"/>
                  <circle id="Ellipse_15" data-name="Ellipse 15" cx="5.859" cy="5.859" r="5.859" transform="translate(43.457 295.885)" fill="#3f3d56"/>
                  <path id="Path_39" data-name="Path 39" d="M273.149,716.534s-.837-18-17.994-15.909" transform="translate(-223.833 -389.256)" fill="#3f3d56"/>
                </g>
              </svg>    
                                  
        </div>
        <div id="right">
            <h2>Change Password</h2>
            <form action="<%=request.getContextPath()%>/forgetpassword" id="form1">
              <input type="text" placeholder="Contact Number" name="contnum"> 
              <div class="line"></div>
              <input type="password" placeholder="New Password" name ="newpassword" id="newpassword">
              <div class="line"></div>
              <input type="password" placeholder="Confirm Password" name ="confirmpassword" id="confirmpassword">
              <div class="line"></div>
               <button onclick="myFunction()"> Change Password</button>
         
              <br>
			    <span style="color:green;">${errMsg1}</span>
			  <span style="color:red;">${errMsg2}</span>
			
            </form>
            
        </div>
    </div>
    


    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
    <script>
      gsap.from('#back  ',{duration: 2.5 , ease: 'expo.inOut', x: -1000 , opacity:0})
      function myFuction() {
    	   
    	 	  document.getElementById("form1").submit();
    	     	  
      }
    </script>
    
</body>
</html>