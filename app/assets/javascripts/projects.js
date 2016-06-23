// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on('page:change', function() {
    $('.nav li a').click(function() {
        //console.log("hola");
        $('.nav li').removeClass('active');
        $(this).closest('li').addClass('active');


        var classname = $(this).closest('li').attr('class').split(' ')[0];
        
        //$('#tabs a[href="#Imagenes"]').tab('show');

        console.log(classname);
        classname = "Otros"
        console.log(classname);
        var str = '#tabs a[href="#'+classname+'"]';
        $(str).tab('show');
        
        //console.log(classname);
    });
});
/* 
 * Cuando se hace clic en el boton para comentar
 * Mostrar tab de comentarios
 * Focus en texto para comentar
 * */
$("#ComentarBtn").click(function () {
    $('#tabs a[href="#Coment"]').tab('show');
    $('#comment_box').focus();
});
