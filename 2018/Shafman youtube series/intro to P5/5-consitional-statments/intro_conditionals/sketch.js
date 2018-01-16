function setup() {
  createCanvas(600, 400);
}

function draw() {
  background("#222222");
  
  stroke(255);
  strokeWeight(4);
  noFill();
  
  // add conditional 
  if(mouseX > 300) {
    fill(200,200,200,100)
  }
  ellipse(width/2, height/2, 100, 100);
}