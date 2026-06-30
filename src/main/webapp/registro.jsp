<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Registro | Portafolio Virtual</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <!-- CSS -->
    <link rel="stylesheet" href="css/registro.css">

</head>

<body>

    <div class="background"></div>

    <div class="register-container">

        <div class="logo">

            <img src="assets/logo.png" alt="Logo">

            <h2>PORTAFOLIO VIRTUAL</h2>

            <span>YENNER ALCÁNTARA CAJA</span>

        </div>

        <form action="RegistroServlet" method="post">

            <h1>Crear Cuenta</h1>
            <%
    String error = request.getParameter("error");

    if ("password".equals(error)) {
%>

<div class="mensaje-error">
    <i class="fa-solid fa-circle-exclamation"></i>
    Las contraseñas no coinciden.
</div>

<%
    } else if ("correo".equals(error)) {
%>

<div class="mensaje-error">
    <i class="fa-solid fa-circle-exclamation"></i>
    El correo ya se encuentra registrado.
</div>

<%
    }
%>

            <p>
                Complete el formulario para registrarse en el Portafolio Virtual.
            </p>

            <!-- Nombre -->

            <div class="input-box">

                <i class="fa-solid fa-user"></i>

                <input
                    type="text"
                    name="nombre"
                    placeholder="Nombre completo"
                    required>

            </div>

            <!-- Correo -->

            <div class="input-box">

                <i class="fa-solid fa-envelope"></i>

                <input
                    type="email"
                    name="correo"
                    placeholder="Correo electrónico"
                    required>

            </div>

            <!-- Contraseña -->

            <div class="input-box">

                <i class="fa-solid fa-lock"></i>

                <input
                    type="password"
                    name="password"
                    placeholder="Contraseña"
                    required>

            </div>
            <div class="select-box">

    <label>
        <i class="fa-solid fa-user-graduate"></i>
        Seleccione su rol
    </label>

    <select name="rol" required>

        <option value="">-- Seleccione --</option>

        <option value="alumno">🎓 Alumno</option>

        <option value="docente">👨‍🏫 Docente</option>

    </select>

</div>

            <!-- Confirmar -->

            <div class="input-box">

                <i class="fa-solid fa-lock"></i>

                <input
                    type="password"
                    name="confirmar"
                    placeholder="Confirmar contraseña"
                    required>

            </div>

            <button type="submit" class="btn-register">

                <i class="fa-solid fa-user-plus"></i>

                Registrarse

            </button>

            <a href="login.jsp" class="back">

                <i class="fa-solid fa-arrow-left"></i>

                Ya tengo una cuenta

            </a>

        </form>

    </div>

</body>

</html>