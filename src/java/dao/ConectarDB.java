package dao;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author Vanesa
 */
public class ConectarDB {

    /**
     *
     * @return
     */
    public DriverManagerDataSource conectar (){
        DriverManagerDataSource datasource = new DriverManagerDataSource();
        datasource.setDriverClassName("com.mysql.jdbc.Driver");
        datasource.setUrl("jdbc:mysql://localhost:3306/bdordencompra");
        datasource.setUsername("root");
        datasource.setPassword("");

        return datasource;
    }
}