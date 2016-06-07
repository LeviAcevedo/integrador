/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ci.confdb;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author sony
 */
public class connSqlServer {
    public Connection con = null;
    public String url = "jdbc:sqlserver://192.168.56.103:1433;databaseName=jahmmedicalservice1;user=sa;password=leviacevedo";
    public String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    public Statement st = null;
    
    public Connection conecta(){
        Connection link = null;
        try {
            Class.forName(driver);
            link = DriverManager.getConnection(url);
        } catch (Exception e){
            
        }
        return link;
    }
    
    public void cierraConexion() throws SQLException {
        try {
            if (con != null) {
                con.close();
                con = null;
            }
        } catch (SQLException ex) {
            throw ex;
        }
    }
    
    public void iniciaTransaccion() throws SQLException {
        try {
            con.setAutoCommit(false);
        } catch (SQLException ex) {
            throw ex;
        }
    }

    public void cancelaTransaccion() throws SQLException {
        try {
            con.rollback();
        } catch (SQLException ex) {
            throw ex;
        }
    }

    public void ejecutaTransaccion() throws SQLException {
        try {
            con.commit();
        } catch (SQLException ex) {
            throw ex;
        }
    }
    
    public String querySql(String sql) throws SQLException {
        String rsql = "";
        try {
            Connection cn = conecta();
            PreparedStatement pst = cn.prepareCall(sql);
            pst.executeUpdate();
            return "<H1>EXITO</H1>";
        } catch (Exception e) {
            return "<H3>Error en la ejecucion del query:\n " + e + "</H3>";
        }
    }
    
    public String listarCategorias() throws SQLException {
        String sql = "SELECT * FROM categorias";
        Connection cn = conecta();
        PreparedStatement pst = cn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();

        String tabla = ""
                + "<table class='table table-condensed'>"
                +"<thead>"
                +"<tr>"
                + "<th>Id</th>"
                + "<th>Nombre</th>"
                + "<th>Detalle</th>"
                + "<th>Acción</th>"
                +"</thead>"
                +"</tr>"
                + "<tbody>";

        while (rs.next()) {
            tabla +="<tr>"
                    + "<td>" + rs.getString("id_categoria") + "</td>"
                    + "<td>" + rs.getString("nombre") + "</td>"
                    + "<td>" + rs.getString("detalle") + "</td>"
                    + "<td><span class='glyphicon glyphicon-pencil'></span></td>"
                    + "</tr>";
        }
        tabla+="</tbody>";
        return tabla+"</table>";
    }
    
    public String listarAccidente() throws SQLException {
        String sql = "SELECT * FROM accidentes";
        Connection cn = conecta();
        PreparedStatement pst = cn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();

        String tabla1 = ""
                + "<table class='table'>"
                +"<thead>"
                +"<tr>"
                + "<th>Id</th>"
                + "<th>Nombre</th>"
                + "<th>Detalle</th>"
                + "<th>Acción</th>"
                +"</thead>"
                +"</tr>"
                + "<tbody>";

        while (rs.next()) {
            tabla1 += ""
                    +"<tr>"
                    + "<td>"+rs.getString("id_accidente")+"</td>"
                    + "<td>"+rs.getString("nombre")+"</td>"
                    + "<td>"+rs.getString("observacion")+"</td>"
                    + "<td>"
                    + "<ul class=\"nav nav-tabs\">"
                    //+ "<li><a href='#myModalHorizontal?cod="+rs.getString("id_accidente")+""
                    //+ "&nomb="+rs.getString("nombre")+""
                    //+ "&obs="+rs.getString("observacion")+"'>"
                    + "<li><a href='#myModal'>"
                    + "<span class='glyphicon glyphicon-pencil'></span></a></li>"
                    + "</ul>"
                    + "</td>"                  
                    + "</tr>"
                    +"";
        }
        tabla1+="</tbody>";
        return tabla1+"</table>";
    }
    
    public String listarAcc() throws SQLException {
        String sql = "SELECT * FROM accidentes";
        Connection cn = conecta();
        PreparedStatement pst = cn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        
        String select = "<select multiple name = 'accidente' class=\"form-control\">";
        while (rs.next()) {
            select += "<option value='"+rs.getString("id_accidente")+"'>"+rs.getString("nombre")+"</option>";
        }
        select+="</select>";
        return select;
    }
    
    public ResultSet megaM(String id) throws SQLException{
        String sql = "SELECT * FROM enfermedades WHERE id_categoria = "+id+"";
        Connection cn = conecta();
        PreparedStatement pst = cn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        return rs;
        }
    
    public String listarVideos() throws SQLException {
        String sql = "SELECT * FROM primeros_auxilios";
        Connection cn = conecta();
        PreparedStatement pst = cn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();

        String tabla2 = ""
                + "<table class='table'>"
                +"<thead>"
                +"<tr>"
                + "<th>Id</th>"
                + "<th>Nombre</th>"
                + "<th>Accidente</th>"
                + "<th>URL</th>"
                + "<th>Acción</th>"
                +"</thead>"
                +"</tr>"
                + "<tbody>";

        while (rs.next()) {
            tabla2 +="<tr>"
                    + "<td>" + rs.getString("id_pa") + "</td>"
                    + "<td>" + rs.getString("nombre") + "</td>"
                    + "<td>" + rs.getString("id_accidente") + "</td>"
                    + "<td>" + rs.getString("video_url") + "</td>"
                    + "<td><span class='glyphicon glyphicon-pencil'></span></td>"
                    + "</tr>";
        }
        tabla2+="</tbody>";
        return tabla2+"</table>";
    }
    
    public String listarCat() throws SQLException {
        String sql = "SELECT * FROM categorias";
        Connection cn = conecta();
        PreparedStatement pst = cn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        
        String select = "<ul class='nav nav-pills nav-stacked'>";
        while (rs.next()) {
            select += "<li>"
                    + "<a href='?id="+rs.getString("id_categoria")+"'>"+rs.getString("nombre")+"</a>"
                    + "</li>";
        }
        select+="</ul>";
        return select;
    }
    
    public String listarEnfermedad() throws SQLException {
        String sql = "SELECT * FROM enfermedades";
        Connection cn = conecta();
        PreparedStatement pst = cn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();

        String tabla3 = ""
                + "<table class='table'>"
                +"<thead>"
                +"<tr>"
                + "<th>Id</th>"
                + "<th>Nombre</th>"
                + "<th>Categoria</th>"
                + "<th>Detalle</th>"
                + "<th>Acción</th>"
                +"</thead>"
                +"</tr>"
                + "<tbody>";

        while (rs.next()) {
            tabla3 +="<tr>"
                    + "<td>" + rs.getString("id_enfermedad") + "</td>"
                    + "<td>" + rs.getString("nombre") + "</td>"
                    + "<td>" + rs.getString("id_categoria") + "</td>"
                    + "<td>" + rs.getString("detalle") + "</td>"
                    + "<td><span class='glyphicon glyphicon-pencil'></span></td>"
                    + "</tr>";
        }
        tabla3+="</tbody>";
        return tabla3+"</table>";
    }
    
    public String listarEnfe(String id) throws SQLException {
        String sql = "SELECT * FROM enfermedades WHERE id_categoria = "+id+"";
        Connection cn = conecta();
        PreparedStatement pst = cn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        
        String select = "<select multiple name = 'enfermedad' class=\"form-control\">";
        while (rs.next()) {
            select += "<option value='"+rs.getString("id_enfermedad")+"'>"+rs.getString("nombre")+"</option>";
        }
        select+="</select>";
        return select;
    }
    
    public String listarSintoma() throws SQLException {
        String sql = "SELECT * FROM sintomas";
        Connection cn = conecta();
        PreparedStatement pst = cn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();

        String tabla3 = ""
                + "<table class='table'>"
                +"<thead>"
                +"<tr>"
                + "<th>Id</th>"
                + "<th>Nombre</th>"
                + "<th>Categoria</th>"
                + "<th>Detalle</th>"
                + "<th>Acción</th>"
                +"</thead>"
                +"</tr>"
                + "<tbody>";

        while (rs.next()) {
            tabla3 +="<tr>"
                    + "<td>" + rs.getString("id_sintoma") + "</td>"
                    + "<td>" + rs.getString("nombre") + "</td>"
                    + "<td>" + rs.getString("id_enfermedad") + "</td>"
                    + "<td>" + rs.getString("detalle") + "</td>"
                    + "<td><span class='glyphicon glyphicon-pencil'></span></td>"
                    + "</tr>";
        }
        tabla3+="</tbody>";
        return tabla3+"</table>";
    }
    
    public String listarCate() throws SQLException {
        String sql = "SELECT * FROM categorias";
        Connection cn = conecta();
        PreparedStatement pst = cn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        
        String select = "<select multiple name = 'categoria' class=\"form-control\">";
        while (rs.next()) {
            select += "<option value='"+rs.getString("id_categoria")+"'>"+rs.getString("nombre")+"</option>";
        }
        select+="</select>";
        return select;
    }
    
    public ResultSet listarCateUsuario() throws SQLException {
        String sql = "SELECT * FROM categorias";
        Connection cn = conecta();
        PreparedStatement pst = cn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();        
        return rs;
    }
    
    public ResultSet enfermedades(String cat, String enf) throws SQLException {
        String sql = "SELECT DISTINCT "
                + "e.nombre as e_nombre,e.detalle as e_detalle,"
                + "s.nombre as s_nombre, s.detalle as s_detalle"
                + " FROM "
                + "enfermedades as e, sintomas as s"
                //+ " medicamentos as m, consecuencias as c"
                + " WHERE "
                + "e.id_categoria = "+cat+""
                + " AND "
                + "e.id_enfermedad = "+enf+""
                + " AND "
                + "e.id_enfermedad = s.id_enfermedad";
        Connection cn = conecta();
        PreparedStatement pst = cn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();        
        return rs;
    }
}

        

