<%-- 
    Document   : DB
    Created on : 25-Jan-2024, 10:49:28 pm
    Author     : Admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="sql"  uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Read Table data</h1>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3307/stu" user="root" password="system" var="ds"></sql:setDataSource>
        <sql:query dataSource="${ds}" var="rs">select *from student</sql:query>   

                <table border="2" width="50%">         
                    <tr>
                        <th>Id</td>
                        <th>Name</td>
                        <th>Email</td>
                    </tr>
                <c:forEach items="${rs.rows}" var="row">
                    <tr>
                        <td><c:out value="${row.id}"></c:out></td>
                        <td><c:out value="${row.name}"></c:out></td>
                        <td><c:out value="${row.email}"></c:out></td>
                        </tr>
                </c:forEach>
            </table>
      
    </body>
</html>
