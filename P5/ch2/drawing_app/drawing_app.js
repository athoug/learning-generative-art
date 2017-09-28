function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
  background(100,100,200);
}

function draw() {
  stroke(255);
  strokeWeight(4);
  if(mouseIsPressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}