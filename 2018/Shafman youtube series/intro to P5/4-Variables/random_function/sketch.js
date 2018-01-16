// define the colors object
var col = {
  r: 255, 
  g: 0, 
  b: 0
};

// define the location object 
var loc = {
  x: 100, 
  y: 200
};

function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
  // background
  background(250);
  // remove shape borders
  noStroke();
}

function draw() {
  // random position for the location of x and y
  loc.x = random(0, width);
  loc.y = random(0, height);
  
  // random colors as well
  col.r = random(100, 255);
  col.b = random(50, 190);
  
  // ellipse
  fill(col.r, col.g, col.b, 100);
  ellipse(loc.x, loc.y, 25, 25);
}