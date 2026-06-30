package dao;

import conexion.Conexion;
import modelo.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO {

    public Usuario validar(String correo, String password) {

        Usuario usuario = null;

        try {

            Connection con = Conexion.getConexion();

            String sql = "SELECT * FROM usuarios WHERE correo=? AND password=?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, correo);
            ps.setString(2, password);

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

    try {

        Connection con = Conexion.getConexion();

        String sql = "INSERT INTO usuarios(nombre, correo, password, rol) VALUES (?, ?, ?, ?)";

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