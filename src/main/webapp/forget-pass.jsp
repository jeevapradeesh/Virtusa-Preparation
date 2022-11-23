<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Forgot Password</title>

    <!-- CSS -->
    <link rel="stylesheet" href="forgot-pass.css" />

    <!-- Font-awesome -->
    <script
      src="https://kit.fontawesome.com/2f078ccccf.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <!--======== Form ========-->
    <div class="login-form">
      <form novalidate onsubmit="return validation()" action="fpassword" method="post">
        <h2>Change Password</h2>
        <!-- First name -->
        <div class="form-input user">
          <div class="i">
            <i class="fas fa-user"></i>
          </div>
          <div>
            <h5>User name</h5>
            <input
              type="text"
              class="input firstname"
              id="uname"
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
            <h5>Mail id</h5>
            <input
              type="email"
              class="input mail"
              id="mail"
              autocomplete="off"
              name="email"
            />
          </div>
        </div>

        <!-- Password -->
        <div class="form-input psw">
          <div class="i">
            <i class="fas fa-lock"></i>
          </div>
          <div>
            <h5>New Password</h5>
            <input
              type="password"
              class="input password"
              id="pass"
              autocomplete="off"
              name="password"
            />
          </div>
        </div>

        <!-- Conform Password -->
        <div class="form-input psw">
          <div class="i">
            <i class="fas fa-key"></i>
          </div>
          <div>
            <h5>Conform Password</h5>
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

        <input type="submit" value="Change Password" class="btn" />
      </form>
    </div>

    <!-- JS -->
    <script src="forgot-pass.js"></script>
    <script>
    "use strict";

 // ========= Form animations =========
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

 // ========= Form validation =========
 const uName = document.getElementById("uname");
 const mail = document.getElementById("mail");
 const otp = document.getElementById("otp");
 const pass = document.getElementById("pass");
 const conPass = document.getElementById("conpass");

 function validation() {
   let namePattern = /^([a-zA-Z]+)([0-9]+)?([a-zA-Z]+)?$/;
   let pattern = /^([a-z0-9\.-]+)@mango.com$/;
   // ----- User name -----

   if (uName.value == "" || uName.value === null) {
     error.innerHTML = "Enter Username";
     return false;
   }
   if (uName.value.length < 2) {
     error.innerHTML = "Enter Valid Username";
     return false;
   }

   if (!namePattern.test(uName.value)) {
     error.innerHTML = "Enter Valid Username";
     return false;
   }

   // ----- Mail -----
   if (mail.value == "" || mail.value === null) {
     error.innerHTML = "Enter Mail id";
     return false;
   }

   if (!pattern.test(mail.value)) {
     error.innerHTML = "Mail id should contain @mango.com";
     return false;
   }

   // ----- Password -----
   if (pass.value == "" || pass === null) {
     error.innerHTML = "Enter New Password";
     return false;
   }

   if (pass.value.length < 4) {
     error.innerHTML = "Password should be minimum 4 characters";
     return false;
   }

   // ----- Con-password -----
   if (!(conPass.value === pass.value)) {
     error.innerHTML = "Conform password doesn't match";
     return false;
   }

   // ----- Alert msg -----
   if (uName && mail && otp && pass && conPass) {
     alert("Password Changed Successfully");
   }
 }

    </script>
  </body>
</html>
