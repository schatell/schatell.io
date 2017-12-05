// Center text on nav link
$(document).ready(function(){
    // target element
    $('.nav-link').each(function(){
        var height = $(this).height();
        // Affect lineheight same as height of element
        $(this).css('lineHeight', (height) + "px");
    });
});


// handle links with @href started with '#' only
$(document).on('click', 'a[href^="#"]', function(e) {
    // target element id
    var id = $(this).attr('href');

    // target element
    var $id = $(id);
    if ($id.length === 0) {
        return;
    }

    // prevent standard hash navigation (avoid blinking in IE)
    e.preventDefault();

    // top position relative to the document
    var pos = $id.offset().top;

    // animated top scrolling
    $('body, html').animate({scrollTop: pos});
});
