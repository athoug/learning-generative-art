// create object 
var bubble = {
  x: 300,
  y: 200,
  size: 24
}

function setup() {
  createCanvas(600, 400);
}

function draw() {
  background(0);
  move();
  display();
}

function display() {
  stroke(255);
  strokeWeight(4);
  noFill();
  ellipse(bubble.x, bubble.y, bubble.size, bubble.size);
}

function move() {
  bubble.x += random(-5, 5);
  bubble.y += random(-5, 5);
}