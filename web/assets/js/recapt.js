
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/* global grecaptcha */

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


