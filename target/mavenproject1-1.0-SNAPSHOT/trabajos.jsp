<%@page import="modelo.Usuario"%>
<%@page import="dao.TrabajoDAO"%>
<%@page import="modelo.Trabajo"%>
<%@page import="java.util.List"%>

<%
    Usuario usuario = (Usuario) session.getAttribute("usuario");

    TrabajoDAO dao = new TrabajoDAO();
    List<Trabajo> listaTrabajos = dao.listarTrabajos();

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

    <% if(usuario != null){ %>

        <a href="dashboard.jsp" title="Panel de Administración">
            <i class="fa-solid fa-user-shield"></i>
        </a>

    <% } else { %>

        <a href="login.jsp" title="Administrador">
            <i class="fa-solid fa-user-shield"></i>
        </a>

    <% } %>

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

        <div style="text-align:center; margin:20px;">
    <h3>
        Trabajos registrados: <%= listaTrabajos.size() %>
    </h3>
</div>

</div>
    
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

<%
for(Trabajo t : listaTrabajos){
%>

<a href="detalleTrabajo.jsp?id=<%= t.getId() %>" class="week-link">

    <div class="week-card">

        <span>SEMANA <%= String.format("%02d", t.getSemana()) %></span>

        <h3>
            <%= t.getTitulo() %>
        </h3>

        <p>
            <%= t.getDescripcion() %>
        </p>

        <div class="archivos">

            <% if(t.getPdf()!=null && !t.getPdf().isEmpty()){ %>
                <span>
                    ? PDF
                </span>
            <% } %>

            <% if(t.getZip()!=null && !t.getZip().isEmpty()){ %>
                <span>
                    ? ZIP
                </span>
            <% } %>

            <% if(t.getImagen()!=null && !t.getImagen().isEmpty()){ %>
                <span>
                    ? Imagen
                </span>
            <% } %>

        </div>

    </div>

</a>

<%
}
%>

</div>

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