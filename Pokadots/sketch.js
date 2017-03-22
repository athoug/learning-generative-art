var points = {
  x: 100, 
  y: 50
};

var colors = {
  r: 255, 
  g: 0, 
  b: 0
};

function setup() {
  createCanvas(600, 400);
  // background
  background(30);
 
}

function draw() {
  // randomness
  points.x = random(0, width);
  points.y = random(0, height);
  colors.r = random(0,255);
  colors.b = random(0, 255);
  
  // ellipse
  noStroke();
  fill(colors.r, colors.g, colors.b, 50);
  ellipse(points.x, points.y, 24, 24);
}