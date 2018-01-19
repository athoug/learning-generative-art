var on = false;

function setup() {
  createCanvas(600, 400);
}

function draw() {
  if (on) {
    background(142, 68, 173);
  } else {
    background(44, 62, 80);
  }
  stroke(236, 240, 241);
  strokeWeight(4);
  noFill();
  if (mouseX > 250 && mouseX < 350 && mouseY > 150 && mouseY < 250) {
    fill(236, 240, 241);
  }
  rectMode(CENTER);
  rect(300, 200, 100, 100);
}

function mousePressed() {
  if (mouseX > 250 && mouseX < 350 && mouseY > 150 && mouseY < 250) {
    on = !on;
  }
}

/*
if (mouseX > 250 && mouseX < 350 && mouseY > 150 && mouseY < 250) {
    if (mouseIsPressed) {
      background(41, 128, 185);
    }
    fill(236, 240, 241);
  }
*/