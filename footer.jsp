<%-- 
    Document   : footer
    Created on : Oct 28, 2023, 3:29:05 AM
    Author     : A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Footer</title>
    <style>
        body {
            margin: 0;
            padding: 0;
        }

        .footer {
            background-color: #000;
            color: #fff;
            padding: 20px;
            text-align: center;
            display: flex;
            justify-content: space-around;
            align-items: center;
           
          
           
        }

        .footer a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
        }

        .footer a:hover {
            text-decoration: underline;
            color: green;
            font-size: 20px;
            transition-duration:0.10s;
        }

    
    </style>
</head>
<body>
    <div class="footer">
        <div>  <img src="logo.png" alt="Logo" class="logo" width="100" height="100"></div>
      
        <div >
            <a href="login.jsp">Home</a>
            <a href="signup.jsp">About Us</a>
            <a href="lost-and-found.html">Lost items</a>
             <a href="findItems.jsp">Found items</a>
        </div>
        <div>
            <p>Email: example@example.com</p>
            <p>Contact: +1234567890</p>
        </div>
    </div>
</body>
</html>
