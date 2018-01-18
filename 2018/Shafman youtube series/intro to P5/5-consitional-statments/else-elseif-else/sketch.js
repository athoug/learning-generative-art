var x;
var y;
var dimention = 100;

function setup() {
  createCanvas(600, 400); // set up the canvas
  x = width / 2;
  y = height / 2

  // shape properties
  stroke(192, 57, 43);
  strokeWeight(4);
  noFill();
  rectMode(CENTER); // make the rectangle drawn from the center
}

function draw() {
  background(231, 76, 60); // background


  // What to draw condition
  if (mouseX > 400) {
    ellipse(x, y, dimention, dimention); // draw the ellipse
  } else if(mouseX > 100) {
    line((x-dimention), height/2,(x+dimention), height/2);
  } else {
    rect(x, y, dimention, dimention); // draw the ellipse
  }

}