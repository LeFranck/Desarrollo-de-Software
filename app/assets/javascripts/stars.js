$(document).ready(function() {
    $('.starvote').hover(function () {
        $(this).siblings().addClass('star-inactive');
        $(this).prevAll().addClass('star-active');
    }, 
    function () {
        $(this).siblings().removeClass('star-inactive');
        $(this).prevAll().removeClass('star-active');
    });
    $("#ComentarBtn").click(function () {
        console.log('test');
        $('#tabs a[href="#Comentarios"]').tab('show');
    });
});
