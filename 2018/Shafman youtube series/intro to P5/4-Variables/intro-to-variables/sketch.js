function setup() {
  createCanvas(600,400);
}

function draw() {
  // background
  background(142, 68, 173);
  
  // ellipse
  fill(155, 89, 182);
  noStroke();
  ellipse(mouseX,100,100,100);
  
  // rectangle
  fill(155, 89, 182);
  noStroke();
  rect(400,100,50,50);
}