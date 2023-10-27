/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/* global grecaptcha */

window.addEventListener("load", function () {
    const loginForm = document.querySelector(".login-form");
    const showPasswordIcon =
        loginForm && loginForm.querySelector(".show-password");
    const inputPassword =
        loginForm && loginForm.querySelector('input[type="password"');
    showPasswordIcon.addEventListener("click", function () {
        const inputPasswordType = inputPassword.getAttribute("type");
        inputPasswordType === "password"
            ? inputPassword.setAttribute("type", "text")
            : inputPassword.setAttribute("type", "password");
    });
});




