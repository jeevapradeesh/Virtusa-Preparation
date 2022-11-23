<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign up</title>
    <link rel="stylesheet" href="signup.css" type="text/css">
    
  </head>
  <body>
    <section>
      <!--======== Text ========-->

      <!--======== Form ========-->
      <div class="login-form">
        <form novalidate onsubmit="return validation()" action="Register" method="post" >
          <h2>Create new account</h2>
          <!-- First name -->
          <div class="form-input user">
            <div class="i">
              <i class="fas fa-user"></i>
            </div>
            <div>
              <h5>First name</h5>
              <input
                type="text"
                class="input firstname"
                id="fname"
                autocomplete="off"
                name="uname"
              />
            </div>
          </div>

          <!-- Last name -->
          <div class="form-input user">
            <div class="i">
              <i class="fas fa-user"></i>
            </div>
            <div>
              <h5>Last name</h5>
              <input
                type="text"
                name="lname"
                class="input lastname"
                id="lname"
                autocomplete="off"
              />
            </div>
          </div>

          <!-- Mail id -->
          <div class="form-input user">
            <div class="i">
              <i class="fas fa-at"></i>
            </div>
            <div>
              <h5>Create Your Mail id</h5>
              <input
                type="email"
                name="email"
                class="input mail"
                id="mail"
                autocomplete="off"
              />
            </div>
          </div>

          <!-- Password -->
          <div class="form-input psw">
            <div class="i">
              <i class="fas fa-lock"></i>
            </div>
            <div>
              <h5>Password</h5>
              <input
                type="password"
                name="password"
                class="input password"
                id="pass"
                autocomplete="off"
              />
            </div>
          </div>

          <!-- Conform Password -->
          <div class="form-input psw">
            <div class="i">
              <i class="fas fa-key"></i>
            </div>
            <div>
              <h5>Confirm Password</h5>
              <input
                type="password"
               
                class="input con-password"
                id="conpass"
                autocomplete="off"
              />
            </div>
          </div>
          
          

          <!-- Error msg -->
          <div id="error"></div>

          <!-- Button -->
          <input type="submit" value="sign up" class="btn" />

          <!-- Login link -->
          <p class="login">
            Already have an account?<a href="login.jsp"
              ><span>Login</span></a
            >
          </p>  
        </form>
      </div>
    </section>

    <!-- JS -->
    <script src="signup.js"></script>
  <script>
  "use strict";

//========= Form animations =========
const inputs = document.querySelectorAll(".input");

function focusFunc() {
 let parent = this.parentNode.parentNode;
 parent.classList.add("focus");
}

function blurFunc() {
 let parent = this.parentNode.parentNode;
 if (this.value == "") {
   parent.classList.remove("focus");
 }
}

inputs.forEach((input) => {
 input.addEventListener("focus", focusFunc);
 input.addEventListener("blur", blurFunc);
});

//========= Form validation =========
const fName = document.getElementById("fname");
const lName = document.getElementById("lname");
const mail = document.getElementById("mail");
const pass = document.getElementById("pass");
const conPass = document.getElementById("conpass");
const error = document.getElementById("error");

function validation() {
 let namePattern = /^([a-zA-Z]+)([0-9]+)?([a-zA-Z]+)?$/;
 let pattern = /^([a-z0-9\.-]+)@gmail.com$/;

 // ----- First name -----
 if (fName.value == "" || fName.value === null) {
   error.innerHTML = "Enter your First name";
   return false;
 }
 if (fName.value.length < 2 || fName.value == 11) {
   error.innerHTML = "First name should be 5 to 20 charecters";
   return false;
 }

 if (!namePattern.test(fName.value)) {
   error.innerHTML = "Enter a  Valid First name";
   return false;
 }

 // ----- Last name -----
 if (lName.value == "" || lName.value === null) {
   error.innerHTML = "Enter your Last name";
   return false;
 }
 

 if (!namePattern.test(lName.value)) {
   error.innerHTML = "Enter a Valid Last name";
   return false;
 }

 // ----- Mail -----
 if (mail.value == "" || mail.value === null) {
   error.innerHTML = "Enter your Mail id";
   return false;
 }

 if (!pattern.test(mail.value)) {
   error.innerHTML = "Mail id should contain @gmail.com";
   return false;
 }

 // ----- Password -----
 if (pass.value == "" || pass === null) {
   error.innerHTML = "Enter your Password";
   return false;
 }

 if (pass.value.length < 4) {
   error.innerHTML = "Password should be minimum 8  characters";
   return false;
 }

 // ----- Con-password -----
 if (!(conPass.value === pass.value)) {
   error.innerHTML = "Conform password doesn't match";
   return false;
 }

 if (fName && lName && mail && pass && conPass) {
   alert("Sign up Successfully");
 }
}

  </script>
  </body>
</html>
