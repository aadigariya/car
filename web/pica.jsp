<%-- 
    Document   : pica
    Created on : 4 Jun, 2017, 7:25:09 PM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html>
<body>

Select a file to upload:
<input type="file" id="myFile" size="50">

<p>Click the button below do the display the file path of the file upload button above (you must select a file first).</p>

<button type="button" onclick="myFunction()">Try it</button>

<p id="demo"></p>
<p>WELCOME,<%=session.getAttribute("myfile")%>  </p>

<script>
function myFunction() {
    var x = document.getElementById("myFile").value;
    document.getElementById("demo").innerHTML = x;
   var n=  request.getSession().setAttribute("myfile",x);
                   

}
</script>

</body>
</html>
