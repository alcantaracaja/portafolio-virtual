package controlador;

import dao.UsuarioDAO;
import modelo.Usuario;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegistroServlet")
public class RegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");
        String confirmar = request.getParameter("confirmar");

        // Validar campos
        if (nombre == null || nombre.trim().isEmpty()
                || correo == null || correo.trim().isEmpty()
                || password == null || password.trim().isEmpty()
                || confirmar == null || confirmar.trim().isEmpty()) {

            response.sendRedirect("registro.jsp?error=campos");
            return;
        }

        // Validar contraseña
        if (!password.equals(confirmar)) {
            response.sendRedirect("registro.jsp?error=password");
            return;
        }

        Usuario usuario = new Usuario();
        usuario.setNombre(nombre.trim());
        usuario.setCorreo(correo.trim().toLowerCase());
        usuario.setPassword(password.trim());

        // 🔥 IMPORTANTE: debe coincidir con tu BD
        usuario.setRol("alumno");

        UsuarioDAO dao = new UsuarioDAO();

        boolean registrado = dao.registrar(usuario);

        if (registrado) {
            response.sendRedirect("login.jsp?registro=ok");
        } else {
            response.sendRedirect("registro.jsp?error=correo");
        }
    }
}