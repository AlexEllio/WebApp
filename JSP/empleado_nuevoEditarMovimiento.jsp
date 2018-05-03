<%-- 
    Document   : empleado_nuevoEditarMovimiento
    Created on : 11-abr-2018, 19:43:01
    Author     : JorgeL
--%>

<%@page import="banco.entity.Movimiento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Movimiento movimiento;
    String tipodemovimiento, fecha, entidad, concepto, cantidad , empleadosupervisor, id;
    movimiento = (Movimiento) request.getAttribute("movimiento");
    if (movimiento != null) { // Editar usuario
        id = movimiento.getIdMovimiento().toString();
        tipodemovimiento = movimiento.getTipo();
        fecha = movimiento.getFecha().toString();
        entidad = movimiento.getEntidad();
        concepto = movimiento.getConcepto();
        cantidad = movimiento.getCantidad().toString();
        empleadosupervisor = movimiento.getUsuarioidUsuario1().toString();
    } else { // Crear usuario
        id="";
        tipodemovimiento = "";
        fecha = "";
        entidad = "";
        concepto = "";
        cantidad = "";
        empleadosupervisor = "";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar/Editar Movimiento</title>
    </head>
    <body>
        <form name="edit" action="Empleado_CrearActualizarMovimientoServlet" method="post">
            <input type="hidden" name="idmovimiento" value="<%= id %>" />
            <table border="1">
                <tbody>
                    <tr>
                        <td><b>Concepto:</b></td>
                        <td><input type="text" name="concepto" max="50" maxlength="50" value="<%= concepto %>"/></td>		
                    </tr><tr>		
                        <td><b>Fecha(yyyy-MM-dd):</b></td>	
                        <td><input type="text" name="fecha" max="50" maxlength="50" value="<%= fecha %>"/></td>
                    </tr><tr>
                        <td><b>Cantidad:</b></td>
                        <td><input type="text" name="cantidad" max="50" maxlength="50" value="<%= cantidad %>"/></td>
                    </tr><tr>
                        <td><b>Tipo de Movimiento:</b></td>
                        <td><input type="text" name="tipodemovimiento" max="50" maxlength="50" value="<%= tipodemovimiento %>"/></td>
                    </tr><tr>   
                        <td><b>Entidad:</b></td>
                        <td><input type="text" name="entidad" max="50" maxlength="50" value="<%= entidad %>"/></td>
                    </tr><tr>  
                        <td><b>Empleado Supervisor:</b></td>
                        <td><input type="text" name="empleadosupervisor" max="50" maxlength="50" value="<%= empleadosupervisor %>"/></td>
                    </tr><tr>    
                        <td><input type="submit" name="btnSave" value="Insertar Nuevo Movimiento"/></td>
                        <td> <a class="btn btn-outline-primary" href="Empleado_MovimientosServlet" role="button">Atras</a></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
