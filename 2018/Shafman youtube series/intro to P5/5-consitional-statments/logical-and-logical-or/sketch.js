var x;
var y;
var dimention = 100;
var halfDimention = (dimention / 2);

var move_x;
var move_y;

function setup() {
  createCanvas(500, 500);

  x = width / 2;
  y = height / 2;

  rectMode(CENTER);
  strokeWeight(4);
}

function draw() {
  background(22, 160, 133);

  // shape details
  noFill();
  stroke(46, 204, 113);

  if (mouseX >= (x - halfDimention) && mouseX < (x + halfDimention) && mouseY < (y + halfDimention) && mouseY > (y - halfDimention)) {
    fill(46, 204, 113);
  }

  rect(x, y, dimention, dimention);

  move_x = random(-5, 5);
  move_y = random(-5, 5);
  
  x += move_x;
  y += move_y;
}