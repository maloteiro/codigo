<% response.setStatus(HttpServletResponse.SC_OK); %>
<%@ taglib prefix='wi' uri='/wi'%>
<html>
  <head>
    <script src="/malote/js/page.js">//</script>
    <script>checkLocation("/malote/expired.jsp")</script>
  </head>
  <body>
    <h3>Para sua segurança a sessão expirou por inatividade !!!</h3>
    <a target="_top" href="/malote/admin/index.wsp?tmp.rnd=<wi:out var="wi.random"/>">Clique aqui para retornar</a>
  </body>
</html>
