<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 03/11/2023
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<c:import url="/include/header.jsp"></c:import>
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
                <div class="error-message" style="display:none;">Username already exists. Please choose another one.
                </div>
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
                    <label>Username</label>
                </div>
                <div class="inputbox">
                    <ion-icon name="lock-closed-outline"></ion-icon>
                    <input type="password" required>
                    <label>Password</label>
                </div>
                <div class="forget">
                    <label><input type="checkbox">Remember Me <a href="#">Forget Password</a></label>
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
<c:import url="/include/footer.jsp"></c:import>
</body>
</html>