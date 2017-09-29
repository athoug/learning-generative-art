function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
  background(255);
}

function draw() {
}

function mousePressed() {
  fill(random(255), random(255), random(255));
  noStroke();
  rectMode(CENTER);
  rect(mouseX, mouseY, 50, 50);
}

function keyPressed() {
  background(255);
}
