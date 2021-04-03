package controller;

import dao.CompradorDao;
import dao.ConectarDB;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import models.Comprador;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Vanesa
 */
@Controller
public class homeController {
    private JdbcTemplate jdbcTemplate;

    /**
     *
     */
    public homeController() {
        ConectarDB con = new ConectarDB();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
    /**
     *
     * @return
     */
    @RequestMapping(value="formComprador.htm", method=RequestMethod.GET)
    public ModelAndView home(){
        ModelAndView mav = new ModelAndView();
            Comprador comprador = new Comprador();        
        mav.addObject("datos_comprador",comprador);
        mav.setViewName("view/formComprador");
        return mav;
    }
    
    /**
     *
     * @return
     */
    @RequestMapping(value="formComprador.htm", method=RequestMethod.POST)
    public ModelAndView mostrarComprador(){
        ModelAndView mav = new ModelAndView();
        String sql = "select * from datos_comprador";
        
        List datos = this.jdbcTemplate.queryForList(sql);

        mav.addObject("cliente",datos);
        mav.setViewName("view/mostrarComprador");
        return mav;
    }
//------------------ metodo para agregar los datos del cliente ------------------    

    /**
     *
     * @return
     */
        @RequestMapping(value="agregarComprador.htm", method=RequestMethod.GET)
    public ModelAndView cargarComprador(){
        ModelAndView mav = new ModelAndView();
        Comprador comprador = new Comprador();   
        mav.addObject("datos_comprador", comprador);
        mav.setViewName("view/agregarComprador");
        return mav;
    }

    /**
     *
     * @param com
     * @return
     */
    @RequestMapping(value="agregarComprador.htm", method=RequestMethod.POST)
    public ModelAndView agregarComprador (Comprador com){
        ModelAndView mav = new ModelAndView();
        String sql = "insert into datos_comprador (Razon_social,Direccion,Telefono,Correo_Electronico) values (?,?,?,?) ";
        this.jdbcTemplate.update(
                sql,com.getRazon_social(), com.getDireccion(), com.getTelefono(), com.getCorreo_Electronico());
        mav.setViewName("redirect:/formComprador.htm");
        return mav;
    }
 //------------------- metodo para actualiar los datos del cliente --------------

    /**
     *
     * @param request
     * @return
     */
        @RequestMapping(value="actComprador.htm", method=RequestMethod.GET)
    public ModelAndView actComprador(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        int id_daco = Integer.parseInt(request.getParameter("id_daco"));
        String sql = "select * from datos_comprador where id_daco = ? ";
        List datos = this.jdbcTemplate.queryForList(sql,id_daco);
        mav.addObject("com", datos);
        mav.setViewName("view/actComprador");
        return mav;
    }

    /**
     *
     * @param com
     * @return
     */
    @RequestMapping(value="actComprador.htm", method=RequestMethod.POST)
    public ModelAndView actComprador (Comprador com){
     ModelAndView mav = new ModelAndView();
        String sql = "update datos_comprador set Razon_social = ?, Direccion = ? , Telefono = ? ,"
                + "Correo_Electronico = ? where id_daco = ? ";
        this.jdbcTemplate.update(
                sql,com.getRazon_social(), com.getDireccion(), com.getTelefono(), 
                    com.getCorreo_Electronico(), com.getid_daco());
        mav.setViewName("redirect:/formComprador.htm");
        return mav; 
    }
//------------ metodo para eliminar un campo de la tabla +---------------------

    /**
     *
     * @param request
     * @return
     */
        @RequestMapping("borrarComprador.htm")
    public ModelAndView borrarComprador(HttpServletRequest request ){
     ModelAndView mav = new ModelAndView();
     int id_daco = Integer.parseInt(request.getParameter("id_daco"));
        String sql = "delete from datos_comprador where id_daco = ? ";
        this.jdbcTemplate.update(sql,id_daco);
        mav.setViewName("redirect:/formComprador.htm");
        return mav;
    }
    
    /**
     *
     * @return
     */
    @RequestMapping(value="consultarComprador.htm", method=RequestMethod.GET)
    public ModelAndView listarCompradorxNombre(){
        ModelAndView mav = new ModelAndView();
        Comprador datos_comprador = new Comprador();   
        mav.addObject("datos_comprador", new Comprador());
        mav.setViewName("view/consultarComprador");
        return mav;
    }

    /**
     *
     * @param com
     * @param result
     * @param status
     * @return
     */
    @RequestMapping(value="consultarComprador.htm", method=RequestMethod.POST)
    public ModelAndView listarCompradorxNombre(
            @ModelAttribute ("datos_comprador")Comprador com,
            BindingResult result,
            SessionStatus status){
        ModelAndView mav = new ModelAndView();
        CompradorDao traDao = new CompradorDao();
        String raz = com.getRazon_social();
        System.out.println("Razon_social:"+raz);
        mav.addObject("datos_comprador",traDao.consultarCompradorByNombre(raz));
        mav.setViewName("view/listarComprador");
        return mav;
    }
}
