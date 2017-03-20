function setup() {
  createCanvas(500,300);
  background(51);
  frameRate(5);
}

function draw() {
  noStroke();
  
  // change coordinate origon
  translate(random(0, width), random(0,height));
  
  // rotating shapes
  angleMode(DEGREES); // use global DEGREES constant
  rotate(random(1,360));
  
  fill('#1A1A1A');
  rect(0,0,50,50);
  
  rotate(random(1,360));
  
  fill("#808080");
  ellipse(25,25,25,25);
  
  rotate(random(1,360));
  fill('#CCCCCC');
  triangle(25,0,50,50,0,50);
}