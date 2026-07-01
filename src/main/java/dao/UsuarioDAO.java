package dao;

import conexion.Conexion;
import modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO {

    public Usuario validar(String correo, String password) {

        Usuario usuario = null;

        String sql = "SELECT * FROM usuarios WHERE correo=? AND password=?";

        try {

            Connection con = Conexion.getConexion();

            if (con == null) {
                return null;
            }

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

    public boolean registrar(Usuario usuario) {

        boolean registrado = false;

        String sql = "INSERT INTO usuarios(nombre, correo, password, rol) VALUES (?, ?, ?, ?)";

        try {

            Connection con = Conexion.getConexion();

            if (con == null) {
                return false;
            }

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getCorreo());
            ps.setString(3, usuario.getPassword());
            ps.setString(4, usuario.getRol());

            int filas = ps.executeUpdate();

            if (filas > 0) {
                registrado = true;
            }

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();

        }

        return registrado;
    }
}