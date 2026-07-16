<%@page import="modelo.Usuario"%>

<%
Usuario usuario = (Usuario) session.getAttribute("usuario");

if(usuario == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html lang="es">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Panel de Administración</title>

<link rel="stylesheet" href="css/dashboard.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

</head>

<body>

<header class="header">

    <div class="logo">
        <i class="fa-solid fa-shield-halved"></i>
        <span>PORTAFOLIO VIRTUAL</span>
    </div>

    <div class="usuario">

        <i class="fa-solid fa-user-shield"></i>

        <span><%=usuario.getNombre()%></span>

    </div>

</header>

<div class="contenedor">

    <h1>Panel de Administración</h1>

    <p>
        Bienvenido nuevamente.
        Desde aquí podrás administrar todo tu portafolio.
    </p>

    <div class="cards">

        <a href="nuevoTrabajo.jsp" class="card">

            <i class="fa-solid fa-plus"></i>

            <h2>Nuevo Trabajo</h2>

            <span>Registrar una nueva actividad</span>

        </a>

        <a href="trabajos.jsp" class="card">

            <i class="fa-solid fa-folder-open"></i>

            <h2>Portafolio</h2>

            <span>Ver trabajos publicados</span>

        </a>

        <a href="LogoutServlet" class="card">

            <i class="fa-solid fa-right-from-bracket"></i>

            <h2>Cerrar sesión</h2>

            <span>Salir del administrador</span>

        </a>

    </div>

</div>

</body>
</html>