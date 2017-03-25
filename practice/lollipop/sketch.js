function setup() {
  createCanvas(600,400);
}

function draw() {
  background(50);
  
  lollipop(100, 100, 50);
  lollipop(300, 200, 125);
  
}

function lollipop(x, y, size) {
  fill(0, 200, 255);
  rect(x-10, y, 20, 150);
  
  fill(255, 0, 200);
  ellipse(x, y, size, size);
}