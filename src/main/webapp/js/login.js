//==========================================
// MOSTRAR / OCULTAR CONTRASEÑA
//==========================================

const togglePassword = document.querySelector(".togglePassword");
const password = document.getElementById("password");

if (togglePassword) {

    togglePassword.addEventListener("click", function () {

        if (password.type === "password") {

            password.type = "text";

            this.classList.remove("fa-eye");
            this.classList.add("fa-eye-slash");

        } else {

            password.type = "password";

            this.classList.remove("fa-eye-slash");
            this.classList.add("fa-eye");

        }

    });

}

//==========================================
// VALIDAR FORMULARIO
//==========================================

const form = document.getElementById("loginForm");

form.addEventListener("submit", function (e) {

    const correo = document.getElementById("correo").value.trim();

    const clave = document.getElementById("password").value.trim();

    const rol = document.getElementById("rol").value;

    if (correo === "") {

        alert("Ingrese su correo electrónico.");

        e.preventDefault();

        return;

    }

    if (!correo.includes("@")) {

        alert("Ingrese un correo válido.");

        e.preventDefault();

        return;

    }

    if (clave === "") {

        alert("Ingrese su contraseña.");

        e.preventDefault();

        return;

    }

    if (clave.length < 6) {

        alert("La contraseña debe tener al menos 6 caracteres.");

        e.preventDefault();

        return;

    }

    if (rol === "") {

        alert("Seleccione el tipo de usuario.");

        e.preventDefault();

        return;

    }

});

//==========================================
// ANIMACIÓN DE LOS INPUTS
//==========================================

const inputs = document.querySelectorAll("input, select");

inputs.forEach(input => {

    input.addEventListener("focus", () => {

        input.parentElement.style.transform = "scale(1.02)";

    });

    input.addEventListener("blur", () => {

        input.parentElement.style.transform = "scale(1)";

    });

});

//==========================================
// EFECTO AL PASAR EL MOUSE SOBRE EL BOTÓN
//==========================================

const boton = document.querySelector(".btn-login");

if (boton) {

    boton.addEventListener("mouseenter", () => {

        boton.style.transform = "translateY(-4px)";

    });

    boton.addEventListener("mouseleave", () => {

        boton.style.transform = "translateY(0px)";

    });

}

//==========================================
// ANIMACIÓN DE ENTRADA
//==========================================

window.addEventListener("load", () => {

    document.querySelector(".login-container").style.opacity = "0";

    document.querySelector(".login-container").style.transform = "translateY(30px)";

    setTimeout(() => {

        document.querySelector(".login-container").style.transition = ".8s";

        document.querySelector(".login-container").style.opacity = "1";

        document.querySelector(".login-container").style.transform = "translateY(0px)";

    }, 200);

});

//==========================================
// TECLA ENTER
//==========================================

document.addEventListener("keydown", function (e) {

    if (e.key === "Enter") {

        form.requestSubmit();

    }

});