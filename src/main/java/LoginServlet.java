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

        String correo = request.getParameter("correo");
        String password = request.getParameter("password");

        System.out.println("Correo recibido: " + correo);
        System.out.println("Password recibido: " + password);

        UsuarioDAO dao = new UsuarioDAO();

        Usuario usuario = dao.validar(correo, password);
        System.out.println("Usuario encontrado: " + usuario);

        if (usuario != null) {

            System.out.println("LOGIN CORRECTO");

            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);

            response.sendRedirect("trabajos.jsp");

        } else {

            System.out.println("LOGIN INCORRECTO");

            response.sendRedirect("login.jsp?error=1");

        }

    }

}