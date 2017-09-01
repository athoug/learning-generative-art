function setup() {
  createCanvas(500, 500);
  background(50);
}

function draw() {
  if(mouseIsPressed) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 50, 50);
}