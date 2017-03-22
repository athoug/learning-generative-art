var r = 0;
var b = 255;

function setup() {
  createCanvas(600, 400);  
}

function draw() {
  background(r, 0, b);
  r = map(mouseX, 0, 600, 0, 255);
  b = map(mouseX, 0, 600, 255, 0);

  // ellipse
  fill(250, 118, 222);
  ellipse(mouseX, 200, 64, 64);
}