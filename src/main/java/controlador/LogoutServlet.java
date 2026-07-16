package controlador;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
                         throws IOException {

        HttpSession session = request.getSession(false);

        if(session != null){
            session.invalidate();
        }

        response.sendRedirect("index.jsp");

    }

}