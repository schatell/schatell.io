// Center text on nav link
$(document).ready(function(){
  // target element
  $('.nav-link').each(function(){
      var height = $(this).height();
      // Affect lineheight same as height of element
      $(this).css('lineHeight', (height) + "px");
  });
  animatebubble();
  setInterval(animatebubble, 2000);
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

//Animate the bubble movement up and down, random duration and movement
function animatebubble() {
  $('.bubble').each(function() {
    var movement = getRandomInt(5, 15);
    $(this).animate({
      top: ("+=" + movement.toString())
    }, { duration: (getRandomInt(800, 1200)), queue: true });
    $(this).animate({
      top: ("-=" + movement.toString())
    }, { duration: (getRandomInt(800, 1200)), queue: true});
  });
};

// Return random number
//The maximum is exclusive and the minimum is inclusive
function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min;
};
