$(document).ready_for_selector("#main-controller.index-action", function() {
  "use strict";
  
  $('#boodle-canvas').attr({width:400,height:400}).css({width:'100%',height:'100%'});  
  $('#boodle-canvas').sketch();
});