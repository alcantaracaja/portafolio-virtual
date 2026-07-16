package controlador;

import dao.TrabajoDAO;
import modelo.Trabajo;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@MultipartConfig
@WebServlet("/TrabajoServlet")
public class TrabajoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Trabajo trabajo = new Trabajo();

        trabajo.setSemana(Integer.parseInt(request.getParameter("semana")));
        trabajo.setTitulo(request.getParameter("titulo"));
        trabajo.setDescripcion(request.getParameter("descripcion"));

Part pdf = request.getPart("pdf");
Part zip = request.getPart("zip");
Part imagen = request.getPart("imagen");
String rutaPdf = getServletContext().getRealPath("/uploads/pdf");
String rutaZip = getServletContext().getRealPath("/uploads/zip");
String rutaImagen = getServletContext().getRealPath("/uploads/imagenes");

java.io.File carpetaPdf = new java.io.File(rutaPdf);
java.io.File carpetaZip = new java.io.File(rutaZip);
java.io.File carpetaImagen = new java.io.File(rutaImagen);

if (!carpetaPdf.exists()) carpetaPdf.mkdirs();
if (!carpetaZip.exists()) carpetaZip.mkdirs();
if (!carpetaImagen.exists()) carpetaImagen.mkdirs();

String nombrePdf = pdf.getSubmittedFileName();
String nombreZip = zip.getSubmittedFileName();
String nombreImagen = imagen.getSubmittedFileName();

if (nombrePdf != null && !nombrePdf.isEmpty()) {
    System.out.println("Ruta PDF: " + rutaPdf);
System.out.println("Existe carpeta: " + carpetaPdf.exists());
System.out.println("Ruta completa: " + rutaPdf + java.io.File.separator + nombrePdf);
    pdf.write(rutaPdf + java.io.File.separator + nombrePdf);
}

if (nombreZip != null && !nombreZip.isEmpty()) {
    zip.write(rutaZip + java.io.File.separator + nombreZip);
}

if (nombreImagen != null && !nombreImagen.isEmpty()) {
    imagen.write(rutaImagen + java.io.File.separator + nombreImagen);
}

trabajo.setPdf(nombrePdf);
trabajo.setZip(nombreZip);
trabajo.setImagen(nombreImagen);
        TrabajoDAO dao = new TrabajoDAO();

        if (dao.guardar(trabajo)) {

            response.sendRedirect("dashboard.jsp?ok=1");

        } else {

            response.sendRedirect("dashboard.jsp?error=1");

        }

    }

}