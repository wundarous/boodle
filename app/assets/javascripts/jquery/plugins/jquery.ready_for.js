;(function($) {

  $.fn.ready_for_selector = function(page_selector, func) {
    $(this).ready(function() {
      if ($(page_selector).length === 0) return;
      func();
    });
  };

  })(jQuery);

  $.fn.ready_for_controller = function(controller, func) {
    $(this).ready_for_selector('#' + controller + '-controller', func);
  },

  $.fn.ready_for_controller_action = function(controller, action, func) {
    $(this).ready_for_selector('#' + controller + '-controller' + '.' + action + '-action', func);
  },

  $.fn.ready_for_controller_actions = function(controller, actions, func) {
    $.each(actions, function(index, action) { 
    $(this).ready_for_selector('#' + controller + '-controller' + '.' + action + '-action', func); 
  });
  
}