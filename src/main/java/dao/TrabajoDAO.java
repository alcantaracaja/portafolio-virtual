package dao;

import conexion.Conexion;
import modelo.Trabajo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;

public class TrabajoDAO {

    // Guardar trabajo
    public boolean guardar(Trabajo trabajo) {

        String sql = "INSERT INTO trabajos(semana, titulo, descripcion, imagen, pdf, zip) VALUES(?,?,?,?,?,?)";

        try {

            Connection con = Conexion.getConexion();

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, trabajo.getSemana());
            ps.setString(2, trabajo.getTitulo());
            ps.setString(3, trabajo.getDescripcion());
            ps.setString(4, trabajo.getImagen());
            ps.setString(5, trabajo.getPdf());
            ps.setString(6, trabajo.getZip());

            int filas = ps.executeUpdate();

            ps.close();
            con.close();

            return filas > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
    // Listar trabajos
public List<Trabajo> listarTrabajos() {

    List<Trabajo> lista = new ArrayList<>();

    String sql = "SELECT * FROM trabajos ORDER BY id DESC";

    try {

        Connection con = Conexion.getConexion();

        PreparedStatement ps = con.prepareStatement(sql);

        ResultSet rs = ps.executeQuery();


        while(rs.next()) {

            Trabajo trabajo = new Trabajo();

            trabajo.setId(rs.getInt("id"));
            trabajo.setSemana(rs.getInt("semana"));
            trabajo.setTitulo(rs.getString("titulo"));
            trabajo.setDescripcion(rs.getString("descripcion"));
            trabajo.setImagen(rs.getString("imagen"));
            trabajo.setPdf(rs.getString("pdf"));
            trabajo.setZip(rs.getString("zip"));


            lista.add(trabajo);
        }


        rs.close();
        ps.close();
        con.close();


    } catch(Exception e) {

        e.printStackTrace();

    }


    return lista;
}
public Trabajo buscarPorId(int id) {

    Trabajo trabajo = null;

    String sql = "SELECT * FROM trabajos WHERE id = ?";

    try {

        Connection con = Conexion.getConexion();

        PreparedStatement ps = con.prepareStatement(sql);

        ps.setInt(1, id);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {

            trabajo = new Trabajo();

            trabajo.setId(rs.getInt("id"));
            trabajo.setSemana(rs.getInt("semana"));
            trabajo.setTitulo(rs.getString("titulo"));
            trabajo.setDescripcion(rs.getString("descripcion"));
            trabajo.setImagen(rs.getString("imagen"));
            trabajo.setPdf(rs.getString("pdf"));
            trabajo.setZip(rs.getString("zip"));

        }

        rs.close();
        ps.close();
        con.close();

    } catch (Exception e) {

        e.printStackTrace();

    }

    return trabajo;
}

}