<%--
  Created by IntelliJ IDEA.
  User: Alan Kenneth
  Date: 12/12/2024
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tablas</title>
</head>
<body>

    <!--La etiqueta <tr> se utiliza para definir una fila en una tabla. -->
    <!--La etiqueta <th> se utiliza dentro de una fila (<tr>) para definir una celda de encabezado. -->
    <!--La etiqueta <td> se utiliza dentro de una fila (<tr>) para definir una celda que contiene datos. -->

    <table border="1">
        <tr>
            <th>Encabezado 1</th>
            <th>Encabezado 2</th>
        </tr>
        <tr>
            <td>Celda 1</td>
            <td>Celda 2</td>
        </tr>
        <tr>
            <td>Celda 3</td>
            <td>Celda 4</td>
        </tr>
    </table>

    <!--Ejemplo de tabla que imprime la tabla de multiplicar de un numero dado por el usuario-->
    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            try {
                int numero = Integer.parseInt(request.getParameter("numero"));
                out.println("<h3>Tabla de multiplicar del " + numero + ":</h3>");
                out.println("<table>");
                out.println("<tr><th>Multiplicando</th><th>Multiplicador</th><th>Resultado</th></tr>");
                for (int i = 1; i <= 10; i++) {
                    out.println("<tr><td>" + numero + "</td><td>" + i + "</td><td>" + (numero * i) + "</td></tr>");
                }
                out.println("</table>");
            } catch (NumberFormatException e) {
                out.println("<p>Error: Asegúrate de ingresar un número válido.</p>");
            }
        }
    %>

</body>
</html>
