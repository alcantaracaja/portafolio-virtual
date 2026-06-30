package controlador;

import dao.UsuarioDAO;
import modelo.Usuario;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Obtener datos del formulario
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");

        // Validar usuario
        UsuarioDAO dao = new UsuarioDAO();
        Usuario usuario = dao.validar(correo, password);

        if (usuario != null) {

            System.out.println("LOGIN CORRECTO");

            // Crear sesión
            HttpSession sesion = request.getSession();
            sesion.setAttribute("usuario", usuario);

            // Redirigir a la página protegida
            response.sendRedirect("trabajos.jsp");

        } else {

            System.out.println("LOGIN INCORRECTO");

            // Volver al login mostrando el mensaje de error
            response.sendRedirect("login.jsp?error=1");

        }
    }
}