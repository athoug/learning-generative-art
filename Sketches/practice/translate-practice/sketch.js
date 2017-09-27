function setup() {
  createCanvas(400,400);
}

function draw() {
  background(240);
  noStroke();
  
  push();
  translate(50,50);
  fill(255,0,0, 100);
  rect(0,0,100,100);
  pop();
  
  push();
  translate(250,150);
  fill(0,255,0, 100);
  rect(0,0,100,100);
  pop();
  
  push();
  translate(140,280);
  fill(0,0,255, 100);
  rect(0,0,100,100);
  pop();
}