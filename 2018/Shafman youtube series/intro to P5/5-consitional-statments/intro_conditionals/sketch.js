function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
}

function draw() {
  background("#222222");
  
  stroke(255);
  strokeWeight(4);
  noFill();
  
  // add conditional 
  if(mouseX > 200) {
    fill(200,200,200,150);
  }
  ellipse(width/2, height/2, 100, 100);
}