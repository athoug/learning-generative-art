function setup() {
  createCanvas(960, 240);
  noStroke();
}

function draw() {
  background(209, 255, 45);
  
  // left creature
  beginShape();
  fill(255, 191, 0);
  vertex(100,240);
  vertex(200,180);
  vertex(220,120);
  vertex(160,40);
  vertex(420,120);
  vertex(320,160);
  vertex(400, 180);
  vertex(280, 200);
  vertex(260,240);
  endShape();
  fill(51);
  ellipse(310,120,16,16);
  
  // right creature
  beginShape();
  fill(0, 182, 255);
  vertex(740,240);
  vertex(720,180);
  vertex(580,160);
  vertex(680,140);
  vertex(560,100);
  vertex(840,20);
  vertex(780, 100);
  vertex(820, 180);
  vertex(920,240);
  endShape();
  fill(51);
  ellipse(690,100,20,20);
  
}