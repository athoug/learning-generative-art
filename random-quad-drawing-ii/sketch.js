function setup() {
  createCanvas(600, 600);
  frameRate(2);
}

function draw() {
  background(230);
  for(var x = -5; x < width; x += 50){
    for(var y = -5; y < height; y+= 50){
      push();
      translate(x, y);
      polyDraw();
      pop();
    }
  }
}

function polyDraw(){
  noFill();
  stroke(random(255),random(255),random(255),100);
  strokeWeight(4);
  quad(random(width), random(height),random(width), random(height),random(width), random(height),random(width), random(height));
}