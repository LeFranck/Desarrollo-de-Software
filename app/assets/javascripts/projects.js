// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on('page:change', function() {
   $('.nav li a').click(function() {
      console.log("hola");
      $('.nav li').removeClass();
      $(this).closest('li').addClass('active');
   });
});
