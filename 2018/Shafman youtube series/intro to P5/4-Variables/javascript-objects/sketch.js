// circle object
var circle = {
  x: 0,
  y: 200,
  diameter: 50
};
var r = 218;
var g = 160;
var b = 221;

function setup() {
  createCanvas(600, 400);
}

function draw() {
  background(r, g, b); // background
  //ellipse
  fill(250, 200, 200);
  ellipse(circle.x, circle.y, circle.diameter, circle.diameter);

  circle.x += 1;
}