<%-- 
    Document   : mostrarComprador
    Created on : 29/03/2021, 09:30:45 PM
    Author     : Vanesa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="cabecera.jsp" %>
            <h1>ORDEN DE COMPRA</h1>
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a href="agregarComprador.htm" class="btn btn-danger">Nuevo Comprador</a>
                </div>
                <div class="card-body ">
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <th>id_daco</th>
                            <th>Razon Social</th>
                            <th>Direccion</th>
                            <th>Telefono</th>
                            <th>Correo Electronico</th>                  
                        </thead>
                        <tbody>
                            <c:forEach items="${cliente}" var="dato">
                            <tr>
                                <td><c:out value="${dato.id_daco}"></c:out></td>
                                <td><c:out value="${dato.Razon_social}"></c:out></td>
                                <td><c:out value="${dato.Direccion}"></c:out></td>
                                <td><c:out value="${dato.Telefono}"></c:out></td>
                                <td><c:out value="${dato.Correo_Electronico}"></c:out></td>
                                <td>
                                    <a href="actComprador.htm?id_daco=${dato.id_daco}" class="btn btn-danger">Editar</a> 
                                    <a href="borrarComprador.htm?id_daco=${dato.id_daco}" class="btn btn-danger">Eliminar</a>
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
    </body>
</html>

