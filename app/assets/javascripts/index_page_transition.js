  var down = function () {
    $("#plane").animate({
      top: "-=20",
    }, 3000)
  };

  var up = function () {
    $("#plane").animate({
      top: "+=20",
    }, 3000)
  };

  var turbulance = function () {
    up();
    down();
    console.log("called method ")
  };

$(document).ready(function(){

  // when page loads plane flys in from the right of the page and then images will appear in the windows

  //top right corner of the image going to be x, y 0
  $("#plane").animate({
    left: "+=85%",
  }, 4000, function(){
    setInterval(turbulance, 1000);
  })

  // $("#window-container").animate({
  //   right: "+=900",
  // }, 3000, function(){
  //   // setInterval(turbulance, 1000);
  // })


});
