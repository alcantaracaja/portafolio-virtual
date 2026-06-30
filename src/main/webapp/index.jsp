<%@page import="modelo.Usuario"%>
<%
Usuario usuario = (Usuario) session.getAttribute("usuario");
%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Portafolio Virtual | Yhenner Alcántara Caja</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Playfair+Display:wght@400;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

    <!--==========================
            HEADER
    ===========================-->

    <header class="header">

        <div class="logo">

            <div class="logo-icon">
                <i class="fa-solid fa-shield-halved"></i>
            </div>

            <div class="logo-text">

                <h2>PORTAFOLIO VIRTUAL</h2>

                <span>YHENNER ALCÁNTARA CAJA</span>

            </div>

        </div>

        <nav class="navbar">

            <a href="#" class="active">Inicio</a>
            <a href="trabajos.jsp">Mis Trabajos</a>
        </nav>

        <div class="header-icons">

    <button id="themeBtn">
        <i class="fa-solid fa-sun"></i>
    </button>

    <% if (usuario == null) { %>

        <a href="login.jsp">
            <button>
                <i class="fa-solid fa-user"></i>
            </button>
        </a>

    <% } else { %>

        <a href="trabajos.jsp">
            <button title="<%= usuario.getNombre() %>">
                <i class="fa-solid fa-user-check"></i>
            </button>
        </a>

    <% } %>

</div>

    </header>

    <!--==========================
            HERO
    ===========================-->

    <section class="hero">

        <div class="hero-left">

            <h4>Hola, soy</h4>

            <h1>

                <span>Yhenner</span><br>

                Alcántara Caja

            </h1>

            <h3>

                Estudiante de Diseño y Programación Web

            </h3>

            <div class="line"></div>

            <p>

                Bienvenido a mi Portafolio Virtual.

                Aquí encontrarás todos los trabajos,

                prácticas, proyectos y evidencias

                desarrolladas durante las 14 semanas

                del curso de Pruebas de Software.

            </p>

            <a href="#" class="btn">

                Ver mis trabajos

                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>

        <!-- FOTO -->

        <div class="hero-right">

            <div class="circle">

                <div class="circle2">

                    <img src="assets/perfil.png" alt="Perfil">

                </div>

            </div>

            <!-- Iconos flotantes -->

            <div class="floating code">

                <i class="fa-solid fa-code"></i>

            </div>

            <div class="floating calendar">

                <i class="fa-regular fa-calendar"></i>

            </div>

            <div class="floating laptop">

                <i class="fa-solid fa-laptop"></i>

            </div>

        </div>

    </section>

    <!--==========================
            TARJETAS
    ===========================-->

    <section class="cards">

        <div class="card">

            <div class="icon">

                <i class="fa-solid fa-graduation-cap"></i>

            </div>

            <h2>Sobre mí</h2>

            <p>

                Conoce más sobre mi formación académica,

                habilidades y objetivos.

            </p>

            <a href="#">

                Conocer más

                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>

        <div class="card">

            <div class="icon">

                <i class="fa-solid fa-folder"></i>

            </div>

            <h2>Mis Trabajos</h2>

            <p>

                Explora todos los trabajos realizados

                semana a semana durante el curso.

            </p>

            <a href="#">

                Explorar trabajos

                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>
                <div class="card">

            <div class="icon">

                <i class="fa-solid fa-diagram-project"></i>

            </div>

            <h2>Proyecto Final</h2>

            <p>

                Desarrollo completo del proyecto final
                utilizando HTML, CSS, JavaScript y MySQL.

            </p>

            <a href="#">

                Ver proyecto

                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>

        <div class="card">

            <div class="icon">

                <i class="fa-solid fa-certificate"></i>

            </div>

            <h2>Habilidades</h2>

            <p>

                HTML5, CSS3, JavaScript, Bootstrap,
                MySQL, Git y Diseño Responsive.

            </p>

            <a href="#">

                Ver habilidades

                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>

        <div class="card">

            <div class="icon">

                <i class="fa-solid fa-envelope"></i>

            </div>

            <h2>Contacto</h2>

            <p>

                Puedes comunicarte conmigo
                mediante mis redes sociales
                o correo electrónico.

            </p>

            <a href="#">

                Contactar

                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>

    </section>

    <!--==========================
            ESTADÍSTICAS
    ===========================-->

    <section class="stats">

        <div class="stat-box">

            <h2>14</h2>

            <span>Semanas</span>

        </div>

        <div class="stat-box">

            <h2>25+</h2>

            <span>Trabajos</span>

        </div>

        <div class="stat-box">

            <h2>10+</h2>

            <span>Proyectos</span>

        </div>

        <div class="stat-box">

            <h2>100%</h2>

            <span>Responsivo</span>

        </div>

    </section>

    <!--==========================
            FOOTER
    ===========================-->

    <footer class="footer">

        <div class="footer-logo">

            <i class="fa-solid fa-shield-halved"></i>

            <h2>Portafolio Virtual</h2>

        </div>

        <p>

            © 2026 Yhenner Alcántara Caja.
            Todos los derechos reservados.

        </p>

        <div class="social">

            <a href="#">

                <i class="fab fa-facebook-f"></i>

            </a>

            <a href="#">

                <i class="fab fa-instagram"></i>

            </a>

            <a href="#">

                <i class="fab fa-github"></i>

            </a>

            <a href="#">

                <i class="fab fa-linkedin-in"></i>

            </a>

            <a href="#">

                <i class="fab fa-youtube"></i>

            </a>

        </div>

    </footer>

    <!-- Botón subir -->

    <button id="topBtn">

        <i class="fa-solid fa-arrow-up"></i>

    </button>

    <!-- Fondo decorativo -->

    <div class="blur blur1"></div>

    <div class="blur blur2"></div>

    <div class="blur blur3"></div>

    <!-- JavaScript -->

    <script src="script.js"></script>

</body>

</html>