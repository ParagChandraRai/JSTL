<%-- 
    Document   : InsertSave
    Created on : 11-Feb-2024, 3:33:25 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.io.*,java.sql.*" %>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="sql"  uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3307/stu" user="root" password="system" var="ds"></sql:setDataSource>
        <%
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
        %>

        <h1>Hi</h1>
        <c:out value="${id}" /> <!-- Display the value of id -->
        <c:out value="${name}" /> <!-- Display the value of name -->
        <c:out value="${email}" /> <!-- Display the value of email -->


        <%-- Debugging --%>
        <p>ID: <%= id%></p>
        <p>Name: <%= name%></p>
        <p>Email: <%= email%></p>


        <c:set var="id" value="5"/> 
        <c:set var="name" value="parag"/> 
        <c:set var="email" value="@gmail.com"/> 
        <sql:update dataSource="${ds}" var="result">
            INSERT INTO student (id, name, email) VALUES (?, ?, ?)
            <sql:param value="${id}"/>
            <sql:param value="${name}"/>
            <sql:param value="${email}"/>
        </sql:update>
            
          <c:set var="StudentId" value=""/> 
        <sql:update dataSource="${ds}" var="count">  
            DELETE FROM Student WHERE id = ?  
            <sql:param value="${StudentId}" />  
        </sql:update> 


    </body>
</html>
