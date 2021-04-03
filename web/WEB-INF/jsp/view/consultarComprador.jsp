<%-- 
    Document   : consultarComprador
    Created on : 29/03/2021, 09:08:55 PM
    Author     : Vanesa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="cabecera.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Orden de compra</title>
    </head>
    <body>
       <h1>Consultar Compradores</h1>
<div class="content">
    <form:form cssClass="navbar-form" method="post" commandName="datos_comprador">
        <form:errors path="*" element="div" cssClass="alert alert-danger"/>
        <div class="card border-info">
            <div class="card card-header bg-info">
                <label class="input-group-addon">Consulta Compradores</label>
            </div>
            <div class="card card-body">
                <div class="input-group">
                    <form:label path="Razon_social" cssClass="input-group-addon">Razon social:</form:label>
                    <form:input path="Razon_social" cssClass="form-control"></form:input>
                </div>
                <div style="margin:0 40px;">
                <form:button name="Enviar" class="btn btn-danger btn-lg">Buscar</form:button>
                <a class="btn btn-danger btn-lg" href="index.htm" role="buton">Inicio</a>
                </div>
            </div>
        </div>
    </form:form>
</div>
    </body>
</html>