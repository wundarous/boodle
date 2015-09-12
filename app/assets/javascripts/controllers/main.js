$(document).ready_for_selector("#main-controller.index-action", function() {
  "use strict";

  var c = document.getElementById("boodle-canvas");
  var ctx = c.getContext("2d");
  ctx.moveTo(0,0);
  ctx.lineTo(200,100);
  ctx.stroke();
  
});