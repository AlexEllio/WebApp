<%-- 
    Document   : empleado_Movimiento
    Created on : 19-abr-2018, 20:00:18
    Author     : beaco
--%>

<%@page import="banco.entity.Movimiento"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    List<Movimiento> lista = (List) request.getAttribute("lista");
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Movimientos</title>
    </head>
    <body>
        <h1>Lista de Movimientos</h1>
        <table> 
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>DNI</th>
            <th>Tipo de Movimiento</th>
            <th>Entidad</th>
            <th>Empleado Supervisor</th>
            <th>Editar Movimiento</th>

            <%
                for (Movimiento movimiento : lista) {
            %>   
            <tr>
                <td>
                    <%= movimiento.getUsuarioidUsuario().getNombre()%>
                </td>
                <td>
                    <%= movimiento.getUsuarioidUsuario().getApellidos()%>
                </td>
                <td>
                    <%= movimiento.getUsuarioidUsuario().getDni()%>
                </td>
                <td>
                    <%= movimiento.getTipo()%>
                </td>
                <td>
                    <%= movimiento.getEntidad()%>
                </td>
                <td>
                    <%= movimiento.getUsuarioidUsuario1().getDni()%>


                <td><a href="Empleado_EditarMovimientosServlet?id=<%= movimiento.getUsuarioidUsuario().getIdUsuario()%>" >Editar</a></td> 
            </tr>
            <%
                }
            %>    
        </table>
        <a href="empleado_InsertarMovimientos.jsp">Insertar nuevo Movimento</a>
    </body>
</html>
