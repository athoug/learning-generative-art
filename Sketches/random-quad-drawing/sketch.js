function setup() {
  createCanvas(600, 600);
  frameRate(5);
}

function draw() {
  background(230);
  
  polyDraw();
}

function polyDraw(){
  noFill();
  stroke(random(255),random(255),random(255),100);
  strokeWeight(4);
  quad(random(width), random(height),random(width), random(height),random(width), random(height),random(width), random(height));
}