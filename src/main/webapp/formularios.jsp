<%--
  Created by IntelliJ IDEA.
  User: Alan Kenneth
  Date: 12/12/2024
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejemplos</title>
</head>
    <body>

    <h2>Conversor de dolares a euros</h2>

    <!------ Formulario para enviar datos--->
    <form method="post">
        <!-- El campo for de label tiene que corresponder al id del imput (preferiblemente tamb del name)-->
        <label for="dolares">Dolares:</label>
        <input type="number" id="dolares" name="dolares" required><br>

        <button type="submit">Calcular</button>

    </form>

        <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            try {
                //El request.getParameter toma el valor del input (name) de arriba en este caso "dolares"
                double dolares = Double.parseDouble(request.getParameter("dolares"));

                double euros = dolares*0.96;

                out.println("<p>Euros Calculados: " + euros + "</p>");
            } catch (NumberFormatException e) {
                out.println("<p>Error: Asegúrate de ingresar números válidos.</p>");
            }
        }
    %>
    </body>
</html>
