$('a[href^="#"]').on('click', function(event) {
    var target = $( $(this).attr('href') );
    if( target.length ) {
        event.preventDefault();
        $('html, body').animate({
            scrollTop: target.offset().top
        }, 750);
    }

});

$(document).ready(function() {
  $('#tog1').click(function(e) { $("togdiv1").toggle(); });
  $('#tog2').click(function(e) { $("togdiv2").toggle(); });
  $('#tog3').click(function(e) { $("togdiv3").toggle(); });
});