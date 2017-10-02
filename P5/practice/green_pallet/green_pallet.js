function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
  frameRate(30);
}

function draw() {
  noStroke();
  fill(random(255), 255, random(255));
  ellipse(mouseX, mouseY, 100, 100);
}
