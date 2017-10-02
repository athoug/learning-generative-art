var circleX;
var circleY;
var circleSize = 0;

function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
  circleX = width/2;
  circleY = height/2;
}

function draw() {
  background(174, 168, 211);
  noStroke();
  fill(103, 65, 114);
  circleSize = mouseX;
  ellipse(circleX, circleY, circleSize, circleSize);
}
