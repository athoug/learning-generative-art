var x;
var y;

var xSpeed = 15;
var ySpeed = 25;

function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
  x = width/2;
  y = height/2;
}

function draw() {
  x += xSpeed;
  y += ySpeed;

  // check for edges collision 
  if (x > width || x < 0) {
    xSpeed *= -1;
  }

  if (y > height || y < 0) {
    ySpeed *= -1;
  }

  noStroke();
  fill(random(255), random(255), random(255));
  ellipse(x, y, 50, 50);
}
