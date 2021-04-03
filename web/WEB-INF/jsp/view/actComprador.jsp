<%-- 
    Document   : actComprador
    Created on : 29/03/2021, 08:19:52 PM
    Author     : Vanesa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="cabecera.jsp" %>
        <div class="content">
            <div class="card border-info">
                <div class="card header bg-info">
                    <h1>Datos Comprador (Edicion)</h1>                    
                </div>
                <div class="carb body">
                    <form action="" method="post">
                        <label Class="input-group-addon">Razon social: </label>
                        <input type="text" name="Razon_social" Class="form-control"
                               value='<c:out value="${com[0].Razon_social}"></c:out>'/>
                        
                        <label Class="input-group-addon">Direccion: </label>
                        <input type="text" name="Direccion" Class="form-control" 
                               value='<c:out value="${com[0].Direccion}"></c:out>'/>
                        
                        <label name="Telefono" Class="input-group-addon">Telefono:</label>
                        <input type="text" name="Telefono" Class="form-control"
                               value="<c:out value="${com[0].Telefono}"></c:out>"/>  
                        
                        <label name="Correo_Electronico" Class="input-group-addon">Correo Electronico:</label>
                        <input type="text" name="Correo_Electronico" Class="form-control"
                               value="<c:out value="${com[0].Correo_Electronico}"></c:out>"/>                        
                                               
                        <input type="submit" name="btnEnviar" value="Editar" class="btn btn-danger btn-md" />
                        <a href="formComprador.htm" class="btn btn-danger btn-md">Regresar<a/>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
