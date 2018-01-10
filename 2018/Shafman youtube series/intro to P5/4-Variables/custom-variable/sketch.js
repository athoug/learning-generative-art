var circleX; // declare the variable
var move = 5; // the movment or speed of the object

function setup() {
  createCanvas(500,500);
  circleX = 50; // assigned a value for the variable
}

function draw() {
  background(52, 73, 94); // setting up the background color
  
  noStroke(); // remove the shape border
  fill(41, 128, 185); // the fill in color of the circle
  ellipse(circleX, 100, 50, 50); // draw the circle
  
  circleX += move;
}