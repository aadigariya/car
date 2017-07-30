<%-- 
    Document   : lllll
    Created on : 23 May, 2017, 10:44:09 AM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<body>

<h3>A demonstration of how to access an OPTGROUP element</h3>

<select size="4">
  <optgroup id="myOptgroup" label="Swedish Cars">
    <option value="homee.jsp">Volvo</option>
    <option value="ameo.jsp">Saab</option>
    <option value="vento.jsp">Koenigsegg</option>
  </optgroup>
</select>

<p>Click the button to get the label/description of the option group.</p>

<button   onclick="myFunction()">Try it</button>

<p id="demo"></p>

<script>
function myFunction() {
    var no = document.getElementById("myOptgroup");
          var txt = document.getElementById("value").value;
     txt = txt + option;

    document.getElementById("result").value = txt;
}

</script>

</body>
</html>
