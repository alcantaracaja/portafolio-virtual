package conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

    private static final String URL =
        "jdbc:mysql://hayabusa.proxy.rlwy.net:58847/railway?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";

    private static final String USER = "root";

    // Contraseña de Railway
    private static final String PASSWORD = "NNPhCnxJLGTeHraeZjRbfLKOWyZRHEKE";

    public static Connection getConexion() {

        Connection con = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(URL, USER, PASSWORD);

            System.out.println("==================================");
            System.out.println("Conectado correctamente a Railway");
            System.out.println("==================================");

        } catch (Exception e) {

            System.out.println("Error al conectar con Railway");
            e.printStackTrace();

        }

        return con;
    }
}