package dao;

import java.util.ArrayList;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Vanesa
 */
public class CompradorDao {
    JdbcTemplate jdbcTemplate;
    ConectarDB con = new ConectarDB();
    
    /**
     *
     * @param id_daco
     * @return
     */
    public List consultarCompradorById(int id_daco){
    List com= new ArrayList();
    this.jdbcTemplate = new JdbcTemplate(con.conectar());
    String sql = "select * from datos_comprador where id_daco= ?";
    com = this.jdbcTemplate.queryForList(sql,id_daco);
    return com;
    }

    /**
     *
     * @param Razon_social
     * @return
     */
    public List consultarCompradorByNombre(String Razon_social){
    List cli = new ArrayList();
    this.jdbcTemplate = new JdbcTemplate(con.conectar());
    String sql = "select * from datos_comprador where Razon_social like '%" + Razon_social + "%'";
    cli = this.jdbcTemplate.queryForList(sql);
        return cli;
    }
}
