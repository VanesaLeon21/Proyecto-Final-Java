<%-- 
    Document   : agregarComprador
    Created on : 29/03/2021, 08:49:10 PM
    Author     : Vanesa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="cabecera.jsp" %>
        <div class="content">
            <div class="card border-info">
                <div class="card header bg-info">
                    <h1>Nuevo Comprador</h1>                    
                </div>
                <div class="carb body">
                    <form:form commandName="datos_comprador" method="post">
                        <form:label path="Razon_social" cssClass="input-group-addon">Razon social:</form:label>
                        <form:input path="Razon_social" cssClass="form-control"></form:input>
                        <form:label path="Direccion" cssClass="input-group-addon">Direccion:</form:label>
                        <form:input path="Direccion" cssClass="form-control"></form:input>
                        <form:label path="Telefono" cssClass="input-group-addon">Telefono:</form:label>
                        <form:input path="Telefono" cssClass="form-control"></form:input>
                        <form:label path="Correo_Electronico" cssClass="input-group-addon">Correo_Electronico: </form:label>
                        <form:input path="Correo_Electronico" cssClass="form-control"></form:input>
      
                        <form:button value="enviar_info" class="btn btn-danger btn-md">
                            Enviar Datos
                        </form:button>
                            <a href="formComprador.htm" class="btn btn-danger btn-md">Regresar<a/>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
