function setup() {
  createCanvas(600,400);
  noFill();
}

function draw() {
  background(52, 73, 94);
  strokeWeight(4);
  
  for(var x = 0; x <= mouseX; x += 50) {
    for(var y = 0; y <= height; y += 50) {
      stroke(241, 196, 15, random(50, 255));
      ellipse(x, y, 25, 25);
    }
  }
}