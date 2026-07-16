<%@page import="dao.TrabajoDAO"%>
<%@page import="modelo.Trabajo"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));

    TrabajoDAO dao = new TrabajoDAO();
    Trabajo trabajo = dao.buscarPorId(id);

    if(trabajo == null){
        response.sendRedirect("trabajos.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title><%= trabajo.getTitulo() %></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/detalle.css">
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500;700&family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body>

<div class="detalle-container">

    <div class="detalle-card">

        <span class="semana">
            SEMANA <%= String.format("%02d", trabajo.getSemana()) %>
        </span>

        <h1>
            <%= trabajo.getTitulo() %>
        </h1>

        <% if(trabajo.getImagen() != null && !trabajo.getImagen().isEmpty()){ %>
            <!-- CORREGIDO: Se agrega la subcarpeta /imagenes/ -->
            <img src="${pageContext.request.contextPath}/uploads/imagenes/<%= trabajo.getImagen() %>" class="imagen-trabajo" alt="Imagen del trabajo">
        <% } %>

        <p class="descripcion">
            <%= trabajo.getDescripcion() %>
        </p>

        <div class="botones">

            <% if(trabajo.getPdf() != null && !trabajo.getPdf().isEmpty()){ %>
                <!-- CORREGIDO: Se agrega la subcarpeta /pdf/ -->
                <a href="${pageContext.request.contextPath}/uploads/pdf/<%= trabajo.getPdf() %>" 
                   target="_blank"
                   class="btn">
                    ? Ver PDF
                </a>
            <% } %>

            <% if(trabajo.getZip() != null && !trabajo.getZip().isEmpty()){ %>
                <!-- CORREGIDO: Se agrega la subcarpeta /zip/ -->
                <a href="${pageContext.request.contextPath}/uploads/zip/<%= trabajo.getZip() %>"
                   class="btn">
                    ? Descargar ZIP
                </a>
            <% } %>

            <!-- CORREGIDO: Ruta absoluta para el botón volver -->
            <a href="${pageContext.request.contextPath}/trabajos.jsp" class="btn volver">
                ? Volver
            </a>

        </div>

    </div>

</div>

</body>
</html>