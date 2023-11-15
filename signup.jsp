<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <style>
        html{
            height: 100%;
            padding-bottom: 9.7rem;
            box-sizing: border-box;
            
        }
      body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    position: relative;
    min-height: 100%;
    box-sizing: inherit;
    
      }
  #footer{
     bottom: 0;
      position: absolute;
      left:0;
      right: 0
  }

        .container {
            max-width: 400px;
            margin: 70px auto;
            padding: 20px;
            background: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            
        }
        
  

        .heading {
            margin: 0 0 20px;
            color: #333;
            text-align: center;
        }

        .form {
            padding: 0 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: 600;
        }

        .input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .error {
            color: red;
            display: none;
        }

        .text-center {
            text-align: center;
        }

        .btn {
            background: #333;
            color: #fff;
            cursor: pointer;
            padding: 15px;
            border: none;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="heading">Sign Up</h2>
        <form action="signupConnectivity.jsp" method="post" class="form" id="form" onsubmit="return validate()">
                  
            <div class="form-group">
                <label for="name1">Name:</label>
                <input type="text" id="name" name="name1" required class="input">
                <div id="name1-error" class="error" >Start with upperCase No numbers or specialCharactor </div>
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" required class="input">
                <div id="email-error" class="error" >please follow the@mail.com</div>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required class="input">
                <div id="password-error" class="error">total 8 charactors (upperCase,lowerCase,number and specialCharactor) </div>
            </div>
            <div class="text-center">
                <input type="submit" value="Sign Up" class="btn">
            </div>
        </form>
         
    
    </div>
       
     <div id="footer"></div>
    
</body>
<script src="signupValidation.js"> </script>
</html>
