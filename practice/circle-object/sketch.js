var circle = {
  x: 0,
  y: 200,
  diameter: 50
};

var colors = {
  r: 218,
  g: 160,
  b: 221
};

function setup() {
  createCanvas(600, 400);
}

function draw() {
  noStroke();
  // bachground
  background(colors.r,colors.g,colors.b);
  // ellipse
  fill(250, 200, 200);
  ellipse(circle.x, circle.y, circle.diameter, circle.diameter);
  
  // update x to move
  circle.x += 1;
}