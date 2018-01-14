/*
  THE MAP FUNCTION IS PRETTY AWESOME 
  it takes any range and maps a value to another range
  we can use it to chnage naything based on anything 
  the map function works as follows
  map(the value that holds the current range, minimum of current range, maximum of current range, minimum  of new range, maximum of new range);
*/
var col; // color variable
var r = 0;
var b = 255;
function setup() {
  createCanvas(600, 400);
}

function draw() {
  // map the colors to the range
  col = map(mouseX, 0, width, 0, 255);
  b = map(mouseY, 0, height, 255, 0);
  // background
  background(r, col, b);
  // ellipse
  fill(250, 118, 222);
  ellipse(mouseX, 200, 64, 64);
}