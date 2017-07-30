<%-- 
    Document   : compare
    Created on : 27 Jul, 2017, 7:27:58 PM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <%@ include file="WEB-INF/tags/angularr.jsp"%>  
  
  <script>  $(function() {
  $('select[data-nested-select]').each(function() {
    var select           = $(this),
        groupName        = select.data('nested-select'),
        optgroups        = select.find('optgroup'),
        options          = select.find('optgroup option'),
        groupSelect      = $('<select>'),
        emptyGroupOption = makeOption(groupName);

    groupSelect.
      append(emptyGroupOption).
      insertBefore(select);

    optgroups.each(function(index) {
      var optgroup    = $(this),
          name        = this.label,
          children    = optgroup.children(),
          firstChild  = children.eq(0),
          selected    = children.is(':selected'),
          groupOption = makeOption(name, index, selected);

      groupSelect.append(groupOption);
      children.data('group', index);
      firstChild.unwrap();
    });

    groupSelect.change(function() {
      var selectedGroup  = parseInt(groupSelect.val(), 10),
          optionsInGroup = options.filter(function() { return $(this).data('group') == selectedGroup; }),
          hiddenOptions  = options.not(optionsInGroup);

      hiddenOptions.
        attr('selected', false).
        detach();

      select.append(optionsInGroup);
    });

    function makeOption(text, value, selected) {
      var option = $('<option>');
      option.attr('value', value);
      option.attr('selected', selected);
      option.text(text);
      return option;
    }
  });
});


$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
$(document).ready(function(){
    $("#myBt").click(function(){
        $("#myModall").modal();
    });
});
$(document).ready(function(){
    $("#myBtnn").click(function(){
        $("#myModalll").modal();
    });
});
$(document).ready(function(){
    $("#mybotn").click(function(){
        $("#myModalo").modal();
    });
});
$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
  </script>
  <style>
       .bgimga {
    background-image: url('Image/olx/ameo.jpg');
    height: 100%;
    background-position: center;
    background-size: cover;
    position: initial;
    color: palegoldenrod;
     font-size: 25px;
     text-align: center;
}
  
      body {
  font-family: 'Pacifico', cursive;
  font-size: 12px;
  font-weight: 400;
  color: #4f5d6e;
  position: relative;
  background:black;
}


nav {
  margin-top: 0px;
  box-shadow: 5px 4px 10px #000;
 }
      
      /*submenu*/
           .dropdown-submenu {
    position: relative;
}

.dropdown-submenu .dropdown-menu {
    top: 0;
    left: 100%;
    margin-top:-1px;
}
      /*modal*/
      
      .modal-header, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  
    
    
    /* Add a gray background color and some padding to the footer */
    
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }
  .carousel-caption {
   position:absolute;
   top: 80px
}

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  .fa {
  padding: 20px;
  font-size: 30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}

.fa-youtube {
  background: #bb0000;
  color: white;
}

.fa-instagram {
  background: #125688;
  color: white;
}
  
#mask {
  position: absolute;
  left: 0;
  top: 0;
  z-index: 9000;
  background-color: #000;
  display: none;
}

#boxes .window {
  position: absolute;
  left: 0;
  top: 0;
  width: 800px;
  height: 500px;
  display: none;
  z-index: 9999;
  padding: 20px;
  border-radius: 15px;
  text-align: right;
  background-image: url('Image/olx/popo.jpg');
}

#boxes #dialog {
  width: 950px;
  height: 550px;
  padding: 10px;
  background-color: #ffffff;
   font-size: 15pt;
}

#popupfoot {
  font-size: 16pt;
  position: absolute;
  bottom: 0px;
  width: 800px;
  left: 800px;
}
  

 

 

  </style>
    </head>
    <body>
            <%@ include file="WEB-INF/tags/nav.jsp"%>  

        
        <br><br><br>
        <br>
        <br>
        <br>
        <br>
        <br>
        
        
        						<div class="col-md-12">
                                                                <div align="center">
                                                                    <h1>COMPARE ALL NEW CARS</h1>
                                                            </div>
<div class="col-md-6">
    <br>
    <div align="center" >    
<%@ include file="opt1.jsp"%>  
    </div><br>
   <iframe name="iframe1" id="iframe1" src="eon.jsp" frameborder="0"  
           height="600" width="600" align="left">   </iframe>  </div>
    <div class="col-md-6">
        <br>
         <div align="center" >    
<%@ include file="opt2.jsp"%>  
    </div><br>
        <iframe name="iframe2" id="iframe2" src="mobilio.jsp" frameborder="0"    height="600" width="600" align="right">
        </iframe></div>
                                                        </div>
                                                            <br>
        <br> 
</body>
</html>
