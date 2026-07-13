<%@page import="modelo.Usuario"%>

<%
    Usuario usuario = (Usuario) session.getAttribute("usuario");

    if (usuario == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Portafolio Virtual | Yenner Alcántara Caja</title>

        <link rel="stylesheet" href="css/trbj.css">

        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

        <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;600;700&family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    </head>


    <body>

        <!-- HEADER -->
        <header class="header">
            <div class="container nav-container">

                <div class="logo-section">
                    <img src="assets/logo.png" alt="Logo" class="logo-img">

                    <div class="logo-text">
                        <h1>PORTAFOLIO VIRTUAL</h1>
                        <span>YENNER ALCÁNTARA CAJA</span>
                    </div>
                </div>

                <nav class="navbar">
                    <a href="index.jsp">Inicio</a>
                    <a href="trabajos.jsp" class="active">Mis Trabajos</a>
                </nav>

                <div class="header-icons">
                    <i class="fa-regular fa-sun"></i>
                    <i class="fa-regular fa-user"></i>
                </div>

            </div>
        </header>

        <!-- HERO -->
        <section class="hero">
            <div class="container hero-content">

                <div class="hero-text">

                    <h4>Hola, soy</h4>

                    <h1>
                        <%= usuario.getNombre()%>
                    </h1>

                    <h3>Estudiante de Diseño y Programación Web</h3>

                    <p>
                        Bienvenido a mi Portafolio Virtual.
                        Aquí encontrarás todos los trabajos,
                        prácticas, proyectos y evidencias
                        desarrolladas durante el curso
                        de Pruebas de Software.
                    </p>

                </div>

                <div class="hero-image">

                    <div class="photo-circle">
                        <img src="assets/perfil.png" alt="Yenner">
                    </div>

                </div>

            </div>
        </section>

        <!-- INFO -->
        <section class="info-cards">
            <div class="container cards-grid">

                <div class="card">
                    <i class="fa-solid fa-graduation-cap"></i>
                    <h4>INSTITUCIÓN</h4>
                    <p>IESTP Andrés Avelino Cáceres Dorregaray</p>
                </div>

                <div class="card">
                    <i class="fa-solid fa-laptop"></i>
                    <h4>PROGRAMA</h4>
                    <p>Diseño y Programación Web</p>
                </div>

                <div class="card">
                    <i class="fa-solid fa-book-open"></i>
                    <h4>CURSO</h4>
                    <p>Pruebas de Software</p>
                </div>

                <div class="card">
                    <i class="fa-regular fa-calendar"></i>
                    <h4>PERIODO ACADÉMICO</h4>
                    <p>2026</p>
                </div>

            </div>
        </section>

        <!-- SEMANAS -->
        <section class="weeks">
            <div class="container">

                <div class="section-header">
                    <h2>Mis trabajos por semana</h2>

                    <a href="login.jsp" class="btn-small">
                        Ver todas las semanas
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>
                </div>

                <div class="weeks-grid">

                    <a href="semana1.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>01</h3>
                            <p>Implementar programas utilizando lenguaje Java</p>
                        </div>
                    </a>

                    <a href="semana2.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>02</h3>
                            <p>Implementar programas utilizando lenguaje Java</p>
                        </div>
                    </a>

                    <a href="semana3.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>03</h3>
                            <p>IMPLEMENTACIÓN DE PROGRAMAS UTILIZANDO EL LENGUAJE JAVA</p>
                        </div>
                    </a>

                    <a href="semana4.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>04</h3>
                            <p>Implementar programas utilizando Sentencias Selectivas</p>
                        </div>
                    </a>

                    <a href="semana5.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>05</h3>
                            <p>Implementar programas utilizando Sentencias Selectivas</p>
                        </div>
                    </a>


                    <a href="semana6.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>06</h3>
                            <p>Implementar programas utilizando Programación Orientada a Objetos</p>
                        </div>
                    </a>

                    <a href="semana7.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>07</h3>
                            <p>Introducción a las Pruebas de Software</p>
                        </div>
                    </a>

                    <a href="semana8.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>08</h3>
                            <p>Introducción a las Pruebas de Software</p>
                        </div>
                    </a>

                    <a href="semana9.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>09</h3>
                            <p>Introducción a las Pruebas de Software</p>
                        </div>
                    </a>

                    <a href="semana10.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>10</h3>
                            <p>Introducción a las Pruebas de Software</p>
                        </div>
                    </a>

                    <a href="semana11.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>12</h3>
                            <p>Introducción a las Pruebas de Software</p>
                        </div>
                    </a>

                    <a href="semana13.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>13</h3>
                            <p>Introducción a las Pruebas de Software</p>
                        </div>
                    </a>

                    <a href="semana14.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>14</h3>
                            <p>Introducción a las Pruebas de Software</p>
                        </div>
                    </a>

                    <a href="semana15.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>15</h3>
                            <p>Introducción a las Pruebas de Software</p>
                        </div>
                    </a>

                    <a href="semana16.jsp" class="week-link">
                        <div class="week-card">
                            <span>SEMANA</span>
                            <h3>16</h3>
                            <p>Introducción a las Pruebas de Software</p>
                        </div>
                    </a>

                </div>

            </div>
        </section>

        <!-- PROYECTO Y CONTACTO -->
        <section class="bottom-section">
            <div class="container bottom-grid">

                <div class="project-card">

                    <h2>Proyecto Final</h2>

                    <p>
                        Aplicación de Pruebas Funcionales y Gestión de
                        Incidencias en el Sistema de Matrícula
                        del Colegio Privilegium.
                    </p>

                    <ul>
                        <li>Descripción del sistema</li>
                        <li>Casos de prueba</li>
                        <li>Evidencias</li>
                        <li>Incidencias encontradas</li>
                        <li>Soluciones aplicadas</li>
                        <li>Resultados obtenidos</li>
                    </ul>

                    <a href="#" class="btn">
                        Ver Proyecto Final
                    </a>

                </div>

                <div class="contact-card">

                    <h2>Información de contacto</h2>

                    <p>
                        <i class="fa-solid fa-envelope"></i>
                        yenneralcantara@gmail.com
                    </p>

                    <p>
                        <i class="fa-solid fa-phone"></i>
                        +51 987 654 321
                    </p>

                    <p>
                        <i class="fa-brands fa-github"></i>
                        github.com/yenneralcantara
                    </p>

                    <p>
                        <i class="fa-brands fa-linkedin"></i>
                        linkedin.com/in/yenneralcantara
                    </p>

                    <a href="#" class="btn">
                        Enviar mensaje
                    </a>

                </div>

            </div>
        </section>

        <!-- FOOTER -->
        <footer class="footer">

            <p class="quote">
                ?El aprendizaje es experiencia,
                todo lo demás es información.?
            </p>

            <span>Albert Einstein</span>

            <div class="social">
                <i class="fa-brands fa-github"></i>
                <i class="fa-brands fa-linkedin"></i>
                <i class="fa-solid fa-envelope"></i>
            </div>

            <p class="copyright">
                © 2026 Portafolio Virtual Académico |
                Todos los derechos reservados.
            </p>

        </footer>

        <script src="script.js"></script>

    </body>
</html>