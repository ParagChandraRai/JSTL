<%-- 
    Document   : Insert
    Created on : 11-Feb-2024, 3:26:38 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="InsertSave.jsp" method="post">
            <table>
                <tr>
                    <td>Enter Id:</td>
                    <td><input type="text" name="id"/> </td>

                </tr
                <tr>
                    <td>Enter Name:</td>
                    <td><input type="text" name="name"/> </td>

                </tr>
                <tr>
                    <td>Enter Email:</td>
                    <td><input type="text" name="email"/> </td>

                </tr>
            </table>
            <input type="submit" value="Submit"/>
        </form>
        


    </body>
</html>
