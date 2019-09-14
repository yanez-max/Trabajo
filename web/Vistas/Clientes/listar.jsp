<%-- 
    Document   : listar
    Created on : 12/09/2019, 22:29:50
    Author     : Demian
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Cliente"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Hello World!</h1>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>APELLIDO</th>
                        <th>DIRECCION</th>
                        <th>TELEFONO</th>
                    </tr>
                  </thead>
                  <%
        ClienteDAO dao=new ClienteDAO();
        List<Cliente>list=dao.listar();
        Iterator<Cliente>iter=list.iterator();
        Cliente cliente=null;
        while(iter.hasNext()){
            cliente=iter.next();
        
        }
        
        %>
                  <body>
                  <tr>
                      <td>%=cliente.getIdcli%</td>
                      <td>%=cliente.getNombrecli%</td>
                      <td>%=cliente.getApecli</td>
                      <td>%=cliente.getDircli%</td>
                      <td>%=cliente.getTelfcli</td>
                      <td>
                          <a>EDIT</a>
                          <a>REMOVE</a>
                      </td>
                  </tr>
                  <%%>
                  </body>
                
                
            </table>
            
        </div>
        
    
    <a href="Controlador?accion=add">Agregar nuevo</>
        
    </body>
</html>
