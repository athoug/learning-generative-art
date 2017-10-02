var circleSize = 0;
var growthSpeed = 1;

function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
}

function draw() {
  background(162, 222, 208);
  noStroke();
  fill(135, 211, 124);
  ellipse(mouseX, mouseY, circleSize, circleSize);
  circleSize += growthSpeed;
}

function mousePressed() {
  growthSpeed *= -1;
}