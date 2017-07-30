   
<script> 
       $(function() {
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
$('#myCarousel').carousel({interval:10000});
$('#media-up').carousel({interval:30000});
$('#media-xs').carousel({interval:15000});
$('#media-up').carousel({interval:30000});
$('#media-xss').carousel({interval:15000});
 
   $(document).ready(function() {	

var id = '#dialog';
	
//Get the screen height and width
var maskHeight = $(document).height();
var maskWidth = $(window).width();
	
//Set heigth and width to mask to fill up the whole screen
$('#mask').css({'width':maskWidth,'height':maskHeight});

//transition effect
$('#mask').fadeIn(500);	
$('#mask').fadeTo("slow",0.9);	
	
//Get the window height and width
var winH = $(window).height();
var winW = $(window).width();
              
//Set the popup window to center
$(id).css('top',  winH/2-$(id).height()/2);
$(id).css('left', winW/2-$(id).width()/2);
	
//transition effect
$(id).fadeIn(2000); 	
	
//if close button is clicked
$('.window .close').click(function (e) {
//Cancel the link behavior
e.preventDefault();

$('#mask').hide();
$('.window').hide();
});

//if mask is clicked
$('#mask').click(function () {
$(this).hide();
$('.window').hide();
});
	
});
</script>
 