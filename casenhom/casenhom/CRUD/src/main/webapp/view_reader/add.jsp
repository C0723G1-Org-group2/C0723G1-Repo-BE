<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 03/11/2023
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>HASH TECHIE OFFICIAL</title>
</head>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap');
  *{
    margin: 0;
    padding: 0;
    font-family: 'poppins',sans-serif;
  }
  section{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    width: 100%;
    background: url("https://img.freepik.com/premium-photo/grunge-blue-wall-background-texture_196038-14809.jpg?w=740");
    background-position: center;
    background-size: cover;
  }
  .form-box{
    position: relative;
    width: 400px;
    height: 637px;
    background: transparent;
    border: 2px solid rgba(255,255,255,0.5);
    border-radius: 20px;
    backdrop-filter: blur(15px);
    display: flex;
    justify-content: center;
    align-items: center;

  }
  h2{
    font-size: 2em;
    color: #fff;
    text-align: center;
  }
  .inputbox{
    position: relative;
    margin: 30px 0;
    width: 310px;
    border-bottom: 2px solid #fff;
  }
  .inputbox label{
    position: absolute;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    color: #fff;
    font-size: 1em;
    pointer-events: none;
    transition: .5s;
  }
  input:focus ~ label,
  input:valid ~ label{
    top: -5px;
  }
  .inputbox input {
    width: 100%;
    height: 50px;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    padding:0 35px 0 5px;
    color: #fff;
  }
  .inputbox ion-icon{
    position: absolute;
    right: 8px;
    color: #fff;
    font-size: 1.2em;
    top: 20px;
  }
  .forget{
    margin: -15px 0 15px ;
    font-size: .9em;
    color: #fff;
    display: flex;
    justify-content: space-between;
  }

  .forget label input{
    margin-right: 3px;

  }
  .forget label a{
    color: #fff;
    text-decoration: none;
  }
  .forget label a:hover{
    text-decoration: underline;
  }
  button{
    width: 100%;
    height: 40px;
    border-radius: 40px;
    background: #fff;
    border: none;
    outline: none;
    cursor: pointer;
    font-size: 1em;
    font-weight: 600;
  }
  .register{
    font-size: .9em;
    color: #fff;
    text-align: center;
    margin: 25px 0 10px;
  }
  .register p a{
    text-decoration: none;
    color: #fff;
    font-weight: 600;
  }
  .register p a:hover{
    text-decoration: underline;
  }
  .wrapper {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    background: rgba(0, 0, 0, 0.5);
    opacity: 0;
    visibility: hidden;
    transition: all 0.3s ease;
  }

  .wrapper .active {
    opacity: 1;
    visibility: visible;
  }

  .wrapper .active-popup {
    pointer-events: none;
  }

  .signup-form,
  .login-form {
    position: relative;
    z-index: 1;
    width: 80%;
    max-width: 600px;
    padding: 30px;
    border-radius: 10px;
    background: #fff;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
  }

  .icon-close {
    position: absolute;
    top: 10px;
    right: 10px;
    font-size: 24px;
    font-weight: bold;
    color: #fff;
    cursor: pointer;
  }

  .btnLogin-popup {
    display: block;
    margin: 20px auto;
    padding: 10px 20px;
    border-radius: 20px;
    background: #007bff;
    color: #fff;
    font-size: 18px;
    font-weight: bold;
    text-align: center;
    cursor: pointer;
  }

  .login-link,
  .register-link {
    display: inline-block;
    margin: 10px 20px;
    color: #007bff;
    text-decoration: underline;
    cursor: pointer;
  }
</style>
<body>
<section>
  <div class="form-box form-signup">
    <div class="form-value">
      <form action="">
        <h2>Sign Up</h2>
        <div class="inputbox">
          <ion-icon name="person-outline"></ion-icon>
          <input type="text" required>
          <label>Name</label>
        </div>
        <div class="inputbox">
          <ion-icon name="mail-outline"></ion-icon>
          <input type="text" required>
          <label>User Name</label>
        </div>
        <div class="inputbox">
          <ion-icon name="lock-closed-outline"></ion-icon>
          <input type="password" required>
          <label>Password</label>
        </div>
        <div class="inputbox">
          <ion-icon name="lock-closed-outline"></ion-icon>
          <input type="password" required>
          <label>Confirm Password</label>
        </div>
        <div class="inputbox">
          <ion-icon name="location-outline"></ion-icon>
          <input type="text" required>
          <label>Address</label>
        </div>
        <div class="inputbox">
          <ion-icon name="call-outline"></ion-icon>
          <input type="tel" required>
          <label>Phone</label>
        </div>
        <div class="inputbox">
          <input type="date" required>
          <label>Birthday</label>
        </div>
        <button>Sign Up</button>
        <div class="register">
          <p>Already have an account? <a href="#" class="login-link">Log In</a></p>
        </div>
        <div class="error-message" style="display:none;">Username already exists. Please choose another one.</div>
      </form>
    </div>
  </div>
</section>
<section>
  <div class="form-box form-login" style="display: none;">
    <div class="form-value">
      <form action="">
        <h2>Login</h2>
        <div class="inputbox">
          <ion-icon name="mail-outline"></ion-icon>
          <input type="text" required>
          <label >Username</label>
        </div>
        <div class="inputbox">
          <ion-icon name="lock-closed-outline"></ion-icon>
          <input type="password" required>
          <label >Password</label>
        </div>
        <div class="forget">
          <label ><input type="checkbox">Remember Me  <a href="#">Forget Password</a></label>
        </div>
        <button>Log in</button>
        <div class="register">
          <p>Don't have a account <a href="#" class="signup-link">Register</a></p>
        </div>
        <div class="error-message" style="display:none;">Invalid username or password. Please try again.</div>
      </form>
    </div>
  </div>
</section>
<div class="wrapper">
  <div class="signup-form">
    <!-- Form đăng ký -->
  </div>
  <div class="login-form">
    <!-- Form đăng nhập -->
  </div>
  <div class="icon-close">X</div>
</div>
<button class="btnLogin-popup">Show Login Form</button>
<a href="#" class="login-link">Log In</a>
<a href="#" class="register-link">Register</a>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script>
  function send(id, name) {
    document.getElementById("id").value = id;
    document.getElementById("name").innerText = name;
  }
</script>
<script>
  const wrapper = document.querySelector('.wrapper');
  const loginLink = document.querySelector('.login-link');
  const registerLink = document.querySelector('.register-link');
  const btnPopup = document.querySelector('.btnLogin-popup');
  const iconClose = document.querySelector('.icon-close');

  registerLink.addEventListener('click', () => {
    wrapper.classList.add('active');
    wrapper.querySelector('.login-form').style.display = 'none';
    wrapper.querySelector('.signup-form').style.display = 'block';
  });

  loginLink.addEventListener('click', () => {
    wrapper.classList.add('active');
    wrapper.querySelector('.signup-form').style.display = 'none';
    wrapper.querySelector('.login-form').style.display = 'block';
  });

  btnPopup.addEventListener('click', () => {
    wrapper.classList.add('active-popup');
  });

  iconClose.addEventListener('click', () => {
    wrapper.classList.remove('active');
  });

  wrapper.addEventListener('click', (event) => {
    if (event.target === wrapper) {
      wrapper.classList.remove('active');
    }
  });
</script>
</body>
</html>