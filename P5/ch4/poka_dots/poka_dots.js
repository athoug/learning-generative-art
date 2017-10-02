var r;
var g;
var b;
var a;

var diam;
var x;
var y;

function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
  ellipseMode(CENTER);
  background(255);
}

function draw() {
  // variables to draw the ellipse
  noStroke();
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);

  diam = random(20);
  x = random(width);
  y = random(height);

  fill(r, g, b, a);
  ellipse(x, y, diam, diam);
}
