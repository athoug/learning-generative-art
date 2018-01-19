function setup() {
  createCanvas(600, 400);
}

function draw() {
  background(142, 68, 173);
  stroke(236, 240, 241);
  strokeWeight(4);
  noFill();
  if (mouseX > 250 && mouseX < 350 && mouseY > 150 && mouseY < 250) {
    if (mouseIsPressed) {
      background(44, 62, 80);
    }
    fill(236, 240, 241);
  }
  rectMode(CENTER);
  rect(300, 200, 100, 100);
}