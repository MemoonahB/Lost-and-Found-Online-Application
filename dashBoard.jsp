<%-- 
    Document   : dashBoard
    Created on : Nov 1, 2023, 5:05:14 AM
    Author     : A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
  <style>
    /* Style for the navigation bar */
    .navbar {
      background-color: #000;
      color: #fff;
      padding: 10px;
      display: flex;
      justify-content: space-around;
      align-items: center;
    }

    /* Style for the logo */
   

    /* Style for the navigation links */
    .nav-links {
      list-style-type: none;
      margin: 0;
      padding: 0;
      display: flex;
    }

    .nav-links li {
      margin: 0 10px;
    }

    /* Style for the login button */
    .login-button {
      background-color: #fff;
      color: #000;
      border: none;
      padding: 8px 16px;
      border-radius: 5px;
      cursor: pointer;
    }
    a{
        text-decoration: none;
        color: white;
    }
    .logoImg{
        width: 80px;
        height: 58px;
    }
  </style>
</head>
<body>
  <div class="navbar">
   
      <div class="logo"><img class="logoImg" src="logo.png"></div>
     
    
           <ul class="nav-links">
      <li><a href="#">Home</a></li>
      <li><a href="#">Lost Items</a></li>
      <li><a href="findItems.jsp">Found Items</a></li>
      <div id="notification-container"></div>
       <div id="notification-container"></div>

      <li><a href="#">Contact Us</a></li>
    </ul>
     
   
   <a href="login.jsp">
        <button class="login-button">Login
                </button>
                      
   </a>
  </div>
    



</body>
</html>
