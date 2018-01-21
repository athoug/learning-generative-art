var circle_size = 25;
var y; // declare a variable for the y position
function setup() {
  createCanvas(600, 400);
  y = height / 2;
}

function draw() {
  background(39, 174, 96);
  strokeWeight(4);
  stroke(22, 160, 133);
  fill(22, 160, 133);
  
  // while loop
  var x = 0; // local varaible | initial starting point of the circle [x]
  while (x <= width) {
    ellipse(x, y, circle_size, circle_size);
    x += 50; // update condition
  }
  
  stroke(26, 188, 156);
  fill(26, 188, 156);
  // for loop
  for(var i = 0; i <= width; i +=50) {
    ellipse(i, y-100, circle_size, circle_size);
  }
}