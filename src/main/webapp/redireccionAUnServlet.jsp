<%--
  Created by IntelliJ IDEA.
  User: Alan Kenneth
  Date: 12/12/2024
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Redirigiendo...</title>
</head>
<body>

<!-- Con el link de abajo hacemos que al llamar a esta pagina
"redireccionAUnServlet" te redirecciona directamente a un Servlet -->

Redirigiendo. Por favor, espere...
<%
    response.sendRedirect("ListarSociosServlet");
%>
</body>
</html>
