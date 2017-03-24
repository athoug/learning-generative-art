var circleX = 50;

function setup() {
  createCanvas(600,400);
}

function draw() {
  noStroke();
  
  // background
  background(250,250,100);
  
  // elsipse
  fill(250,200,200);
  ellipse(circleX, 200,80,80);
  circleX += 1;
}