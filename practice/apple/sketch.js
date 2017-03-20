function setup() {
  createCanvas(500,300);
  background(240,200,201);
}

function draw() {
  noFill();
  stroke(112,65,57);
  strokeWeight(3);
  arc(287, 135, 100, 100, PI, PI+QUARTER_PI);
  noStroke();
  fill(135,4,0);
  rotate(PI/10);
  ellipse(300, 100, 80, 130);
  rotate(PI/-11);
  ellipse(215, 180, 80, 130);
  
}