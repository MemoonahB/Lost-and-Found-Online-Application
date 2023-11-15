var email = document.getElementsByName("email")[0];
var name1 = document.getElementsByName("name1")[0];
var password = document.getElementsByName("password")[0];

var email_error = document.getElementById("email-error");
var name1_error = document.getElementById("name1-error");
var password_error = document.getElementById("password-error");

function validate() {
    var valid = true;

    var emailPattern = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;
    var passwordPattern = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&!])[A-Za-z\d@#$%^&!]{6,8}$/;

    if (!emailPattern.test(email.value)) {
        email.style.border = "solid red 2px";
        email_error.style.display = "block";
        email.focus();
        valid = false;
    } else {
        email.style.border = "";
        email_error.style.display = "none";
    }

    if (!passwordPattern.test(password.value)) {
        password.style.border = "solid red 2px";
        password_error.style.display = "block";
        password.focus();
        valid = false;
    } else {
        password.style.border = "";
        password_error.style.display = "none";
    }
    
  if (!/^[A-Z][a-zA-Z]*$/.test(name1.value)) {
        name1.style.border = "solid red 2px";
        name1_error.style.display = "block";
       name1.focus();
        valid = false;
    } else {
        name1.style.border = "";
        name1_error.style.display = "none";
    }



   
    
    return valid;
}
