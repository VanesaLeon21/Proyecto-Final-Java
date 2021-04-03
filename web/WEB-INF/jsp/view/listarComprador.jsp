<%-- 
    Document   : listarComprador
    Created on : 29/03/2021, 09:23:08 PM
    Author     : Vanesa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="cabecera.jsp" %>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<link href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap.min.css"/>
<script>
    $(document).ready( function () {
    $('#listadoClientes').DataTable({
        "info": true,
        "paging": true,
        "buttons": true,
        "lengthMenu":[[5,10,25,50,-1],[5,10,25,50,"All"]],
           "language":{"url": "https://cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json"},
        "paginate": true,
    });
} );
</script>
            <h1>ORDEN DE COMPRA</h1>
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a href="agregarComprador.htm" class="btn btn-danger">Nuevo Comprador</a>
                </div>
                <div class="card-body ">
                    <table class="table table-bordered table-striped table-hover" id="listadoClientes">
                        <thead>
                            <th>NIT</th>
                            <th>Razon Social</th>
                            <th>Direccion</th>
                            <th>Telefono</th>
                            <th>Correo Electronico</th>
                        </thead>
                        <tbody>
                            <c:forEach items="${datos_comprador}" var="dato">
                            <tr>
                                <td><c:out value="${dato.id_daco}"></c:out></td>
                                <td><c:out value="${dato.Razon_social}"></c:out></td>
                                <td><c:out value="${dato.Direccion}"></c:out></td>
                                <td><c:out value="${dato.Telefono}"></c:out></td>
                                <td><c:out value="${dato.Correo_Electronico}"></c:out></td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
