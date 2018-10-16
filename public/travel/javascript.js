$(document).ready(function() {

  var counter = 0;
  $("#text0").fadeIn("slow");
  $("#rect" + counter).animate({"opacity": "1"})

  $(".arrow-right").click(function() {
    $("#text" + counter).fadeOut("fast", 0);
    $("#rect" + counter).animate({"opacity": "0.25"}, "fast")
    if (counter >= 3) {
      counter = 0;
    } else {
      counter++;
    }
    console.log(counter);
    $("#text" + counter).fadeIn("slow");
    $("#rect" + counter).animate({"opacity": "1"}, "fast")
  });


  $(".arrow-left").click(function() {
    $("#text" + counter).fadeOut("fast", 0);
    $("#rect" + counter).animate({"opacity": "0.25"}, "fast")
    if (counter <= 0) {
      counter = 3;
    } else {
      counter--;
    }
    console.log(counter);
    $("#text" + counter).fadeIn("slow");
    $("#rect" + counter).animate({"opacity": "1"}, "fast");
  })
});
