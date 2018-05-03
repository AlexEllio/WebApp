<%--
    Document   : Usuario_Tansferencias
    Created on : Apr 12, 2018, 12:04:20 PM
    Author     : Alex
--%>
<%@page import="banco.entity.Usuario"%>
<%@page import="banco.entity.Movimiento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    Usuario usuario = (Usuario) session.getAttribute("usuario");
    %>

<html>
    <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>Transferencia</title>
    </head>
    <body>
        <div class="row">
            <div class="col-sm-4">Hola <%=usuario.getNombre()%> <%=usuario.getApellidos()%></div>
            <div class="col-sm-4"></div>
            <div class="col-sm-4"></div>
            <div class="col-sm-4"><a href="login.jsp">Salir</a></div>
        </div>
        <div class="row">
            <h1><b>Transferencia Bancaria</b></h1>
        </div>

        <form class="form-horizontal" action="/action_page.php">
            <div class="form-group">
              <label class="control-label col-sm-2" for="text">Beneficiario:</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="Beneficiario" placeholder="Introduce Beneficiario">
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-2" for="Concepto">Concepto:</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="Concepto" placeholder="Introduce Concepto">
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-2" for="Concepto">Importe:</label>
              <div class="col-sm-10">
                <input type="number" class="form-control" id="Importe" placeholder="Introduce Importe">
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Ingresar</button>
              </div>
            </div>
        </form>



    </body>
</html>
