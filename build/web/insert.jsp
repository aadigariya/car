<%-- 
    Document   : insert
    Created on : 15 Jun, 2017, 1:54:54 PM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Photo</title>
    </head>
    <body>
        <h2>Add Photo</h2>
        <form id="form1" enctype="multipart/form-data" action="addphoto" method="post">
            <table>
                <tr>
                    <td>Enter Photo Id :</td>
                    <td><input  type="text"  name="id"/></td>
                </tr>
                <tr>
                    <td>Enter Title For Photo :</td>
                    <td><input  type="text"  name="title"/></td>
                </tr>
                <tr>
                    <td>Select Photo  </td>
                    <td><input type="file"  name="photo" />
                </tr>
            </table>
            <p/>
            <input type="submit" value="Add Photo"/>
        </form>


        <p/>
        <a href="listphotos">List Photos </a>
    </body>
</html>