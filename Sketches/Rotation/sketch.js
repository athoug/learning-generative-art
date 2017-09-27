function setup() {
  createCanvas(500, 500);
  rectMode(CENTER);
}

function draw() {
  background(20);
  
  stroke(255);
  noFill();
  translate(250, 250);
  rotate(radians(frameCount));
  rect(0, 0, 200, 200);
}