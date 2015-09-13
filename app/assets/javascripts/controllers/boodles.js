// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready_for_selector("#boodles-controller.new-action", function() {
  "use strict";
  
  $("form.new_boodle").submit(function( event ) {
    $(this).find('#boodle_data_url').val($('#boodle-canvas')[0].toDataURL('image/png'));
  });
  
});

