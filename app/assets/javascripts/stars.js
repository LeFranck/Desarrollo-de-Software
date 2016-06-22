function ratingStars() {
    setTimeout( function () {
    /*
     * Cuando se hace hover en una estrella
     * cambiar las estrellas de la izquierda en activas
     */
    $('.starvote').hover(function () {
        $(this).siblings().addClass('star-inactive');
        $(this).prevAll().addClass('star-active');
    }, 
    /* unhover */
    function () {
        $(this).siblings().removeClass('star-inactive');
        $(this).prevAll().removeClass('star-active');
    });
    /* 
    * Cuando se hace clic en el boton para comentar
    * Mostrar tab de comentarios
    * Focus en texto para comentar
    * */
    $("#ComentarBtn").click(function () {
        $('#tabs a[href="#Comentarios"]').tab('show');
        $('#comment_box').focus();
    });
    },200);
}
