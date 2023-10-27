<%-- 
    Document   : create
    Created on : Sep 29, 2023, 11:31:14 AM
    Author     : truon
--%>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="assets/css/stylelogin.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
            integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg=="
            crossorigin="anonymous"
            />
    </head>
    <body>
        <!-- Form without bootstrap -->
        <div class="auth-wrapper">
            <div class="auth-container">
                <div class="auth-action-left">
                    <div class="auth-form-outer">
                        <h2 class="auth-form-title">Create Your Account</h2>
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
                            <p class="auth-sgt">
                                or use your email for registration:
                            </p>
                        </div>
                        <form class="login-form" action="MainController" method="POST">
                            <input
                                type="text"
                                class="auth-form-input"
                                name="userID" required=""
                                placeholder="User ID"
                                />
                            ${requestScope.USER_ERROR.userIDError}
                            <input
                                type="text"
                                class="auth-form-input"
                                name="fullName" required=""
                                placeholder="User name"
                                />
                            ${requestScope.USER_ERROR.fullNameError}
                            <div class="input-icon">
                                <input
                                    type="password"
                                    class="auth-form-input"
                                    name="password" required=""
                                    placeholder="Password"
                                    />
                                ${requestScope.USER_ERROR.passwordError}
                                <i class="fa fa-eye show-password"></i>
                            </div>
                            <input
                                type="password"
                                class="auth-form-input"
                                name="password" required=""
                                placeholder="Confirm Password"
                                />
                            ${requestScope.USER_ERROR.confirmError}
                            <label class="btn active">
                                <input type="checkbox" name="email1" checked />
                                <i class="fa fa-square-o"></i
                                ><i class="fa fa-check-square-o"></i>
                                <span>
                                    I agree to the <a href="#">Terms</a> and
                                    <a href="#">Privacy Policy</a>.</span
                                >
                            </label>
                            <div class="g-recaptcha" data-sitekey="6LdtUtMoAAAAAHl1MzujwszwxYt1BqESapsUgDuO"></div><br>
                            <div id="error"></div>
                            <div class="footer-action">
                                <input
                                    type="submit"
                                    name="action" 
                                    value="Create"

                                    class="auth-submit"
                                    />
                                <a href="login.html" class="auth-btn-direct"
                                   >Log In</a
                                >
                            </div>
                        </form>
                        ${requestScope.USER_ERROR.error}
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
        <script src="assets/js/recapt.js"></script>
    </body>
</html>
