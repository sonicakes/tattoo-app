$(document).ready(function () {

  if ( ! $('#photos').length) {
    // There is no map div on this page, so don't run code below
    return;
  }

  function getRandomSize(min, max) {
    return Math.round(Math.random() * (max - min) + min);
  }

  var allImages = "";

  for (var i = 0; i < gallery.length; i++) {
    var width = getRandomSize(200, 400);
    var height =  getRandomSize(200, 400);
    allImages += gallery[i]; // ??
  }

  $('#photos').append(allImages);
})
