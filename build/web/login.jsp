<%-- 
    Document   : login
    Created on : Sep 19, 2023, 11:41:13 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/stylelogin.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
            integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg=="
            crossorigin="anonymous"
            />
        <title>JSP Login Page</title>
    </head>

    <!-- Form without bootstrap -->
    <div class="auth-wrapper">
        <div class="auth-container">
            <div class="auth-action-left">
                <div class="auth-form-outer">
                    <h2 class="auth-form-title">Welcome</h2>
                    <div class="auth-external-container">
                        <div class="auth-external-list">
                            <ul>
                                <li>
                                    <a href="#"
                                       ><i class="fa fa-google"></i
                                        ></a>
                                </li>
                                <li>
                                    <a href="#"
                                       ><i class="fa fa-facebook"></i
                                        ></a>
                                </li>
                                <li>
                                    <a href="#"
                                       ><i class="fa fa-twitter"></i
                                        ></a>
                                </li>
                                <li>
                                    <a href="#"
                                       ><i class="fa fa-linkedin"></i
                                        ></a>
                                </li>
                            </ul>
                        </div>
                        <p class="auth-sgt">or sign in with:</p>
                    </div>
                    <form class="login-form" action="MainController" method="POST" id="form">
                        <input
                            type="text"
                            class="auth-form-input"
                            name="userID" 
                            required=""
                            placeholder="User ID"
                            />
                        <div class="input-icon">
                            <input
                                type="password"
                                class="auth-form-input"
                                name="password" required=""
                                placeholder="Password"
                                />
                            <i class="fa fa-eye show-password"></i>
                        </div>
                        <label class="btn active">
                            <input type="checkbox" name="email1" checked />
                            <i class="fa fa-square-o"></i
                            ><i class="fa fa-check-square-o"></i>
                            <span> Remember password.</span>
                        </label>
                        <div class="g-recaptcha" data-sitekey="6LdtUtMoAAAAAHl1MzujwszwxYt1BqESapsUgDuO"></div><br>
                        <div id="error"></div>
                        <div class="footer-action">
                            <input
                                type="submit"
                                name="action"
                                value="Login"
                                class="auth-submit"
                                />
                            <a href="MainController?action=Create_Page" class="auth-btn-direct"
                               >Register</a
                            >
                        </div>
                    </form>
                     ${requestScope.ERROR}
                    <div class="auth-forgot-password">
                        <a href="#">Forgot Password</a>
                    </div>
                </div>
            </div>
            <div class="auth-action-right">
                <div class="auth-image">
                    <img src="assets/img/login.png" alt="login" />
                </div>
            </div>
        </div>
    </div>
   
    <script src="assets/js/common.js"></script>  
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <script>
        window.onload = function () {
            let isValid = false;
            const form = document.getElementById("form");
            const error = document.getElementById("error");
            form.addEventListener("submit", function (e) {
                e.preventDefault();
                const response = grecaptcha.getResponse();
                if (response) {
                    form.submit();
                } else {
                    error.innerHTML = "Please check reCAPTCHA before login!";
                }
            });
        };
    </script>
</html>
