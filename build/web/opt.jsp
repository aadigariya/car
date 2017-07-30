<%-- 
    Document   : opt
    Created on : 4 Jun, 2017, 3:48:24 PM
    Author     : AaDI
--%>
<select id="websites" data-nested-select="Select Brand">
  <option> Select Car</option>
  <optgroup label="Maruti Suzuki">
       <option value="alto800.jsp">Maruti Suzuki Alto 800</option>
      <option value="omni.jsp">Maruti Suzuki Omni</option>
      <option value="altok10.jsp">Maruti Suzuki Alto K10</option>
       <option value="eeco.jsp">Maruti Suzuki Eeco</option>
      <option value="Celerio.jsp">Maruti Suzuki Celerio</option>
      <option value="WagonR.jsp">Maruti Suzuki Wagon R 1.0</option>
       <option value="Ignis.jsp">Maruti Suzuki Ignis</option>
      <option value="Swift.jsp">Maruti Suzuki Swift</option>
      <option value="Baleno.jsp">Maruti Suzuki Baleno</option>
  </optgroup>
  <optgroup label="Hyundai">
       <option value="eon.jsp">Hyundai Eon</option>
      <option value="Grandi10.jsp">Hyundai Grand i10</option>
      <option value="Elite i20.jsp">Hyundai Elite i20</option>
       <option value="xcent.jsp">Hyundai Xcent</option>
      <option value="i20 Active.jsp">Hyundai i20 Active</option>
      <option value="verna.jsp">Hyundai Verna</option>
       <option value="creta.jsp">Hyundai Creta</option>
      <option value="elantra.jsp">Hyundai Elantra</option>
      <option value="Tucson.jsp">Hyundai Tucson</option>
  </optgroup>
  <optgroup label="Honda">
       <option value="brio.jsp">Honda Brio</option>
      <option value="amaze.jsp">Honda Amaze</option>
      <option value="jazz.jsp">Honda Jazz</option>
       <option value="mobilio.jsp">Honda Mobilio</option>
      <option value="WR-V.jsp">Honda WR-V</option>
      <option value="city.jsp"> Honda City</option>
       <option value="city.jsp">Honda City</option>
      <option value="CR V.jsp">Honda CR-V</option>
      <option value="accord.jsp">Honda Accord</option>
  </optgroup>
  <optgroup label="Mahindra">
       <option value="kuv 100.jsp">Mahindra KUV100</option>
      <option value="verito.jsp">Mahindra Verito Vibe CS</option>
      <option value="bolero.jsp">Mahindra Bolero</option>
       <option value="tuv 30.jsp">Mahindra TUV300</option>
      <option value="e20.jsp">Mahindra e2o Plus</option>
      <option value="verito.jsp">Mahindra Verito</option>
       <option value="e20.jsp">Mahindra NuvoSport</option>
      <option value="xylo.jsp">Mahindra Xylo</option>
      <option value="thar.jsp">Mahindra Thar</option>
  </optgroup>
  <optgroup label="Toyota Etios">
       <option value="liva.jsp">Toyota Etios Liva</option>
      <option value="crossp.jsp">Toyota Etios Cross</option>
      <option value="liva.jsp">Toyota Platinum Etios</option>
       <option value="crysta.jsp">Toyota Innova Crysta</option>
      <option value="altis.jsp">Toyota Corolla Altis</option>
      <option value="fortuner.jsp">Toyota Fortuner</option>
       <option value="camry.jsp">Toyota Camry</option>
      <option value="prius.jsp">Toyota Prius</option>
      <option value="prado.jsp">Toyota Land Cruiser Prado</option>
  </optgroup>
   <optgroup label="Volkswagen">
       <option value="ameo.jsp">Volkswagen Ameo</option>
      <option value="polo.jsp">Volkswagen Polo</option>
      <option value="cross.jsp">Volkswagen Cross Polo</option>
       <option value="vento.jsp">Volkswagen Vento</option>
      <option value="jetta.jsp">Volkswagen Jetta</option>
      <option value="GTI.jsp">Volkswagen GTI</option>
       <option value="cross.jsp">Volkswagen Tiguan</option>
      <option value="beetal.jsp">Volkswagen Beetle</option>
   </optgroup>
   <optgroup label="Tata" >
       <option value="genx.jsp">Tata Nano GenX</option>
      <option value="nano.jsp">Tata Nano</option>
      <option value="tigor.jsp">Tata Tiago</option>
       <option value="indicav2.jsp">Tata Indica V2</option>
      <option value="tigor.jsp">Tata Tigor</option>
      <option value="bolt.jsp">Tata Bolt</option>
       <option value="venture.jsp">Tata Venture</option>
      <option value="ev2.jsp">Tata Indica eV2</option>
      <option value="zest.jsp">Tata Zest</option>
  </optgroup>
    
</select>

 
 
 
  
   <!--
      And our buttons, the first one is "Open In Same Window"
      which opens the link selected on the dropdown in the same window.
      
      The other button is the "Open In New Tab" which opens the link in
      new tab (or window in safari)
   -->
   <input type="button" class="btn btn-primary" value="Open In Same Window" id="open_same_window" />
   <input type="button" class="btn btn-primary" value="Open In New Tab" id="open_new_tab" />
 
 
<!-- include our library -->
 <script type='text/javascript'>
$(document).ready(function() {
 
   //this will be triggered when the first button was clicked
   $("#open_same_window").click(function(){
      //this will find the selected website from the dropdown
      var go_to_url = $("#websites").find(":selected").val();
      
      //this will redirect us in same window
      document.location.href = go_to_url;
   });
  
   //this will be triggered when the second button was clicked
   $("#open_new_tab").click(function(){
      //this will find the selected website from the dropdown
      var go_to_url = $("#websites").find(":selected").val();
      
      //this will redirect us in new tab
      window.open(go_to_url, '_blank');
   });
  
});

</script>
 