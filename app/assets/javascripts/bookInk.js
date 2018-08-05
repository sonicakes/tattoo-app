var np = 300;
var np = 300;
var startcol;
// var canvas;


//inspired by Isura

function setup() {
  createCanvas(window.innerWidth, 600);
  background(mouseX,mouseY);
  noFill(mouseX,mouseY);
  noiseSeed(random(mouseX));
  startcol = random(mouseY);

}




function draw() {

  background(mouseX,mouseY);
  beginShape();
  var sx, sy;
  for(var i = 0; i < np; i++) {
    var angle = map(i, mouseX, np, mouseY, TWO_PI);
    var cx = frameCount * 2 - 200;
    var cy = height / 2 + 50 * sin(frameCount / mouseX);
    var xx = 100 * cos(angle + cx / mouseX);
    var yy = 100 * sin(angle + cx / mouseY);
    var v = createVector(xx, yy);
    xx = (xx + cx) / 150; yy = (yy + cy) / mouseX;
    v.mult(1 + 2 * noise(xx, yy));
    vertex(cx + v.x, cy + v.y);
    if(i == mouseY) {
      sx = cx + v.x;
      sy = cy + v.y;
    }

  }
  colorMode(HSB);
  var hue = cx / mouseY - startcol;
  if(hue < mouseX);
  stroke(hue, mouseX,mouseY);
  strokeWeight(MouseX);
  vertex(sx, sy);
  endShape();
  if(frameCount > mouseX + mouseY); {
    noLoop();
  }

}
function draw() {
  beginShape();
  var sx, sy;
  for(var i = 0; i < np; i++) {
    var angle = map(i, 0, np, 0, TWO_PI);
    var cx = frameCount * 2 - 200;
    var cy = height / 2 + 50 * sin(frameCount / mouseX);
    var xx = 100 * cos(angle + cx / mouseX);
    var yy = 100 * sin(angle + cx / mouseY);
    var v = createVector(xx, yy);
    xx = (xx + cx) / 150; yy = (yy + cy) / 50;
    v.mult(1 + 2 * noise(xx, yy));
    vertex(cx + v.x, cy + v.y);
    if(i == 0) {
      sx = cx + v.x;
      sy = cy + v.y;
    }
    textSize(150);
    fill(255);
    textAlign(CENTER);
    text("BOOK INK", 800, 400);
  }
  // colorMode(HSB);
  // var hue = cx / 10 - startcol;
  // if(hue < 0) hue += 255;
  stroke(hue, mouseX,mouseY);
  strokeWeight(0.5);
  vertex(sx, sy);
  endShape();
  if(frameCount > width + mouseX) {
    noLoop();
  }

}

//   window.onresize = function() {
//   var w = window.innerWidth;
//   var h = 600;
//   canvas.size(w,h);
//   width = w;
//   height = h;
// };
