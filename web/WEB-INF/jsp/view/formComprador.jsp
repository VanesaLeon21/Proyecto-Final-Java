<%-- 
    Document   : formComprador
    Created on : 29/03/2021, 09:17:47 PM
    Author     : Vanesa
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="cabecera.jsp" %>
        <div class="content"> 
            <h2>Datos Compradores</h2>
            <form:form cssClass="navbar-form " method="post" commandName="datos_comprador">
                <form:errors path="*" element="div" cssClass="alert alert-danger" />
                <div class="input-group">
                <form:label path="Razon_social" cssClass="input-group-addon">Razon social:</form:label>
                <form:input path="Razon_social" cssClass="form-control"></form:input>            
                </div>
                <form:errors path="Razon_social"/><br>
                 <div class="input-group" >
                <form:label path="Direccion" cssClass="input-group-addon">Direccion:</form:label>
                <form:input path="Direccion" cssClass="form-control"></form:input>
                 </div>
                 <br>             
                 <div class="input-group" >
                <form:label path="Telefono" cssClass="input-group-addon">Telefono:</form:label>
                <form:input path="Telefono" cssClass="form-control"></form:input>
                </div>
                <br>            
                <div class="input-group" >
                <form:label path="Correo_Electronico" cssClass="input-group-addon">Correo Electronico:</form:label>
                <form:input path="Correo_Electronico" cssClass="form-control"></form:input>
                </div><br>
  
                <form:button name="Enviar" class="btn btn-danger btn-lg">Enviar</form:button>
                <a class="btn btn-danger btn-lg" href="index.htm" role="button" >Inicio</a>

             </form:form>
            </div>
    </body>
</html>
