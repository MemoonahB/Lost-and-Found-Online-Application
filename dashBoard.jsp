<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Simple HTML HomePage</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Sriracha&display=swap');

            body {
                margin: 0;
                box-sizing: border-box;
            }

            /* CSS for header */

            .navbar {
                background-color: #000;
                color: #fff;
                padding: 20px;
                display: flex;
                justify-content: space-around;
                align-items: center;
            }


            .nav-links {
                list-style-type: none;
                margin: 0;
                padding: 0;
                display: flex;
            }

            .nav-links li {
                margin: 0 10px;
            }


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


            /* CSS for main element */
            .intro {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                width: 100%;
                height: 520px;
                background: linear-gradient(to bottom, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.5) 100%), url("https://images.unsplash.com/photo-1587620962725-abab7fe55159?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80");
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
            }

            .intro h1 {
                font-family: sans-serif;
                font-size: 60px;
                color: #fff;
                font-weight: bold;
                text-transform: uppercase;
                margin: 0;
            }

            .intro p {
                font-size: 20px;
                color: #d1d1d1;
                text-transform: uppercase;
                margin: 20px 0;
            }

            .intro button {
                background-color: #5edaf0;
                color: #000;
                padding: 10px 25px;
                border: none;
                border-radius: 5px;
                font-size: 20px;
                font-weight: bold;
                cursor: pointer;
                box-shadow: 0px 0px 20px rgba(255, 255, 255, 0.4)
            }

            .achievements {
                display: flex;
                justify-content: space-around;
                align-items: center;
                padding: 40px 80px;
            }

            .achievements .work {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                padding: 0 40px;
            }

            .achievements .work i {
                width: fit-content;
                font-size: 50px;
                color: #333333;
                border-radius: 50%;
                border: 2px solid #333333;
                padding: 12px;
            }

            .achievements .work .work-heading {
                font-size: 20px;
                color: #333333;
                text-transform: uppercase;
                margin: 10px 0;
            }

            .achievements .work .work-text {
                font-size: 15px;
                color: #585858;
                margin: 10px 0;
            }

            .about-me {
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 40px 80px;
                border-top: 2px solid #eeeeee;
            }

            .about-me img {
                width: 500px;
                max-width: 100%;
                height: auto;
                border-radius: 10px;
            }

            .about-me-text h2 {
                font-size: 30px;
                color: #333333;
                text-transform: uppercase;
                margin: 0;
            }

            .about-me-text p {
                font-size: 15px;
                color: #585858;
                margin: 10px 0;
            }

            /* CSS for footer */

            .footer {
                background-color: #000;
                color: #fff;
                padding: 60px;
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
                color: white;
                font-size: 20px;
                transition-duration:0.10s;
            }



            .bottom-links {
                display: flex;
                justify-content: space-around;
                align-items: center;
                padding: 40px 0;
            }

            .bottom-links .links {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                padding: 0 40px;
            }

            .bottom-links .links span {
                font-size: 20px;
                color: #fff;
                text-transform: uppercase;
                margin: 10px 0;
            }

            .bottom-links .links a {
                text-decoration: none;
                color: #a1a1a1;
                padding: 10px 20px;
            }
        </style>
    </head>

    <body>
        <div class="navbar">

            <div class="logo"><img class="logoImg" src="logo.PNG"></div>


            <ul class="nav-links">
                <li><a href="dashBoard.jsp">Home</a></li>
                <li><a href="LostItem.jsp">Lost Items</a></li>
                <li><a href="findItem.jsp">Found Items</a></li>
                <li><a href="#">About Us</a></li>
            </ul>


            <a href="login.jsp">
                <button class="login-button">Login
                </button>

            </a>
        </div>


        <main>
            <div class="intro">
                <h1>Lost And Found</h1>
                <p>
                    Reliable way to find and upload about lost and found items.
                </p>

                <a href="LostItem.jsp">
                    <button>Learn More</button>
                </a>
            </div>
            <div class="achievements">
                <div class="work">
                    <i class="fas fa-atom"></i>
                    <p class="work-heading">Trustworthy</p>
                    <p class="work-text">We have worked on many projects and I am very proud of them. Company is good in their work and profession</p>
                </div>
                <div class="work">
                    <i class="fas fa-skiing"></i>
                    <p class="work-heading">Reliable</p>
                    <p class="work-text">We provide reliable services to our user and clients. We receive good feedback and we are alway working hard.</p>
                </div>
                <div class="work">
                    <i class="fas fa-ethernet"></i>
                    <p class="work-heading">Network</p>
                    <p class="work-text">Company have a lot of individuals with network skills and They are very good at them. They am very good at networking and they are always looking for new network skills.</p>
                </div>
            </div>
            <div class="about-me">
                <div class="about-me-text">
                    <h2>Contact Us</h2>
                    <p style="width: 260px;">Have a question or need assistance? Reach out to our dedicated Lost and Found team – we're here to help reunite you with your belongings and ensure your experience is as seamless as possible. Contact us, because every lost item has a story, and we're committed to helping you write its happy ending.</p>
                </div>
                <div class="bottom-links">
                    <div class="links">
                        <span>Social Links</span>
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>       
            </div>
        </main>
        <div class="footer">
            <div>  <img src="logo.PNG" alt="Logo" class="logo" width="100" height="100"></div>

            <div >
                <a href="dashBoard.jsp">Home</a>
                <a href="signup.jsp">About Us</a>
                <a href="LostItem.jsp">Lost items</a>
                <a href="findItem.jsp">Found items</a>
            </div>
            <div>
                <p>Email: example@example.com</p>
                <p>Contact: +1234567890</p>
            </div>
        </div>
    </body>

</html>
