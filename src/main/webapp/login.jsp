<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>

    <!-- CSS -->
    <link rel="stylesheet" href="login.css" />

    <!-- Font-awesome -->
    <script
      src="https://kit.fontawesome.com/2f078ccccf.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <section>
      <!--======== Text ========-->

      <!--======== Form ========-->
      <div class="login-form">
        <form  action="login" method="post" onsubmit="return validation()">
          <h2>Welcome</h2>

          <!-- Username 
          <div class="form-input user">
            <div class="i">
              <i class="fas fa-user"></i>
            </div>
            <div>
              <h5>Username</h5>
              <input type="text" class="input" id="uname" autocomplete="off" name="username" />
            </div>
          </div>  -->
          
          <!-- Mail id -->
          <div class="form-input user">
            <div class="i">
              <i class="fas fa-user"></i>
            </div>
            <div>
              <h5>Email</h5>
              <input
                type="email"
                name="email"
                class="input mail"
                id="mail"
                autocomplete="off"
                required
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
                class="input"
                id="pass"
                autocomplete="off"
                name="password"
                required
              />
            </div>
          </div>

          <!-- Forgot password -->
          <a href="forget-pass.jsp">Forgot Password** </a>

          <!-- Error msg -->
          <div id="error"></div>

          <!-- Submit -->
         <a href="index 1.jsp"> <input type="submit" value="login" class="btn" /></a>

          <!-- sign up link -->
          <p class="signup">
            Don't have an account?<a href="signup.jsp"
              ><span>Sign up</span></a
            >
          </p>
        </form>
      </div>
    </section>

    <!-- JS -->
    <script src="login.js"></script>
    
    <script>
    
    function validation(){
    	const mail = document.getElementById("mail");
    	const error = document.getElementById("error");
    	let pattern = /^([a-z0-9\.-]+)@gmail.com$/;
    	 if (mail.value == "" || mail.value === null) {
    		    error.innerHTML = "Enter Mail id";
    		    return false;
    		  }

    		  if (!pattern.test(mail.value)) {
    		    error.innerHTML = "Mail id should contain @gmail.com";
    		    return false;
    		  }
    }
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

 // ========= Profile pic =========
 function showPreview(event) {
   if (event.target.files.length > 0) {
     var src = URL.createObjectURL(event.target.files[0]);
     var preview = document.getElementById("file-ip-1-preview");
     preview.src = src;
   }
 }

 // ========= Form validation =========
 // <------ Login form ------>
 const u_name = document.getElementById("uname");
 const pass = document.getElementById("pass");
 const error = document.getElementById("error");

 function validation() {
   // -----Username-----
   let namePattern = /^([a-zA-Z]+)([0-9]+)?([a-zA-Z]+)?$/;

   if (u_name.value == "") {
     error.innerHTML = "Enter your  Username";
     return false;
   }

   if (u_name.value.length < 2 || u_name.value.length > 11) {
     error.innerHTML = "Username should be 5 to 20  charecters";
     return false;
   }

   if (!namePattern.test(u_name.value)) {
     error.innerHTML = "Enter a Valid Username";
     return false;
   }

   // -----Password-----
   if (pass.value == "") {
     error.innerHTML = "Enter your Password";
     return false;
   }

   if (pass.value.length < 4) {
     error.innerHTML = "password should minimum 8 characters";
     return false;
   }
 }
   
    </script>
    
  </body>
</html>
