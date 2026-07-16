<%
    if (session.getAttribute("usuario") != null) {
        response.sendRedirect("trabajos.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Iniciar Sesión | Portafolio Virtual</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <!-- CSS -->
    <link rel="stylesheet" href="css/login.css">

</head>

<body>

    <div class="background"></div>

    <div class="login-container">

        <!-- Logo -->
        <div class="logo">

            <img src="assets/logo.png" alt="Logo">

            <h2>PORTAFOLIO VIRTUAL</h2>

            <span>Panel de Administración</span>

        </div>

        <!-- Formulario -->
        <form id="loginForm" action="LoginServlet" method="post">

            <h1>Administrador</h1>

            <%
    String error = request.getParameter("error");
    String registro = request.getParameter("registro");

    if (error != null) {
%>

<div class="mensaje-error">
    <i class="fa-solid fa-circle-exclamation"></i>
    Correo o contraseña incorrectos.
</div>

<%
    }

    if ("ok".equals(registro)) {
%>

<div class="mensaje-exito">
    <i class="fa-solid fa-circle-check"></i>
    Usuario registrado correctamente. Ahora puede iniciar sesión.
</div>

<%
    }
%>

            <p>
                Solo el administrador puede acceder al panel de gestión del Portafolio Virtual.
            </p>

            <!-- Correo -->
            <div class="input-box">

                <i class="fa-solid fa-envelope"></i>

                <input
                    type="email"
                    name="correo"
                    id="correo"
                    placeholder="Correo electrónico"
                    required>

            </div>

            <!-- Contraseña -->
            <div class="input-box">

                <i class="fa-solid fa-lock"></i>

                <input
                    type="password"
                    name="password"
                    id="password"
                    placeholder="Contraseña"
                    required>

                <i class="fa-solid fa-eye togglePassword"></i>

            </div>

            <!-- Recordarme -->
            <div class="options">

                <label>
                    <input type="checkbox">
                    Recordarme
                </label>

                <a href="#">¿Olvidó su contraseña?</a>

            </div>

            <!-- Botón Ingresar -->
            <button type="submit" class="btn-login">

                <i class="fa-solid fa-right-to-bracket"></i>

                Ingresar

            </button>


            <!-- Volver -->
            <a href="index.jsp" class="back">

                <i class="fa-solid fa-arrow-left"></i>

                Volver al inicio

            </a>

        </form>

    </div>

    <!-- JavaScript -->
    <script src="js/login.js"></script>

</body>

</html>