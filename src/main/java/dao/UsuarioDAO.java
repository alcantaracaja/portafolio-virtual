package dao;

import conexion.Conexion;
import modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO {

    // LOGIN
    public Usuario validar(String correo, String password) {

        Usuario usuario = null;

        String sql = "SELECT * FROM usuarios WHERE correo=? AND password=?";

        try {

            Connection con = Conexion.getConexion();

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, correo.trim());
            ps.setString(2, password.trim());

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setCorreo(rs.getString("correo"));
                usuario.setPassword(rs.getString("password"));
                usuario.setRol(rs.getString("rol"));
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return usuario;
    }

    // REGISTRO
    public boolean registrar(Usuario usuario) {

        String checkSql = "SELECT id FROM usuarios WHERE correo = ?";
        String insertSql = "INSERT INTO usuarios(nombre, correo, password, rol) VALUES (?, ?, ?, ?)";

        try {

            Connection con = Conexion.getConexion();

            // verificar si existe
            PreparedStatement ps1 = con.prepareStatement(checkSql);
            ps1.setString(1, usuario.getCorreo());

            ResultSet rs = ps1.executeQuery();

            if (rs.next()) {
                rs.close();
                ps1.close();
                con.close();
                return false;
            }

            rs.close();
            ps1.close();

            // insertar
            PreparedStatement ps2 = con.prepareStatement(insertSql);
            ps2.setString(1, usuario.getNombre());
            ps2.setString(2, usuario.getCorreo());
            ps2.setString(3, usuario.getPassword());

            // 🔥 CORREGIDO
            ps2.setString(4, usuario.getRol());

            int filas = ps2.executeUpdate();

            ps2.close();
            con.close();

            return filas > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
}