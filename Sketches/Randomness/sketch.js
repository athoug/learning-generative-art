var colors = {
  r: 0, 
  g: 0, 
  b: 0
};

var ellipseColor = {
  r: 250, 
  g: 200, 
  b: 200
}

function setup() {
  createCanvas(600, 400);
  // background
  background(250, 250, 100);  
}

function draw() {
  // map colors to mouse position
  ellipseColor.r = map(mouseX, 0, width, 255, 0);
  ellipseColor.b = map(mouseY, 0, height, 0, 255);
  
  noStroke();
  fill(ellipseColor.r, ellipseColor.g, ellipseColor.b, 50);
  ellipse(mouseX, mouseY, 25, 25);
  
}

function mousePressed() {
  // add randomness
  colors.r = random(0, 255);
  colors.b = random(0, 255);
  colors.g = random(0, 255);
  background(colors.r, colors.g, colors.b);
}