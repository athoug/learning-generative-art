function setup() {
  createCanvas(600, 400);
}

function draw() {
  background(0);
  
  stroke(255);
  strokeWeight(4);
  noFill();
  if(mouseX > 300) {
    fill(255, 0, 200, 150);
  }
  
  if(mouseY < 200){
    triangle(300, 150, 350, 250, 250, 250);
  }
  
  if(mouseY > 200){
    ellipse(300, 200, 100, 100);
  }
}