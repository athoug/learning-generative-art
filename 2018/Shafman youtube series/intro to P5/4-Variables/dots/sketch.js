function setup() {
  createCanvas(600, 400);
  // background
  background(250, 250, 100);
}

function draw() {
  // ellipse
  noStroke();
  fill(250, 200, 200, 50);
  ellipse(mouseX, mouseY, 25, 25);
}

function mousePressed() {
  // when the mouse is pressed erase everything
  background(250, 250, 100);
}