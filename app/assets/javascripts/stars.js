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
    },200);
}
