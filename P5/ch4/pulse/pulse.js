var circle1X;
var circle1Y;
var circle1Size;

var circle2X;
var circle2Y;
var circle2Size;

var circle3X;
var circle3Y;
var circle3Size;

var circle4X;
var circle4Y;
var circle4Size;

var backgroundColor;
var circle1Color;
var circle2Color;
var circle3Color;
var circle4Color;

var speed1 = 1;
var speed2 = 2;
var speed3 = 3;
var speed4 = 4;


function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
  rectMode(CENTER);
  //frameRate(30);

  circle1X = width/4;
  circle1Y = height/4;
  circle1Size = width/4;

  circle2X = width/2 + width/4;
  circle2Y = height/4;
  circle2Size = width/4;

  circle3X = width/4;
  circle3Y = height/2 + height/4;
  circle3Size = width/4;

  circle4X = width/2 + width/4;
  circle4Y = height/2 + height/4;
  circle4Size = width/4;

  backgroundColor = color('#ecf0f1');
  circle1Color = color('#f1c40f');
  circle2Color = color('#e67e22');
  circle3Color = color('#f39c12');
  circle4Color = color('#d35400');
}

function draw() {
  background(backgroundColor);
  noStroke();
  fill(circle1Color);
  ellipse(circle1X, circle1Y, circle1Size, circle1Size);
  fill(circle2Color);
  ellipse(circle2X, circle2Y, circle2Size, circle2Size);
  fill(circle3Color);
  ellipse(circle3X, circle3Y, circle3Size, circle3Size);
  fill(circle4Color);
  ellipse(circle4X, circle4Y, circle4Size, circle4Size);


  if (circle1Size > width/4 || circle1Size < 0) {
    speed1 *= -1;
  }

  if (circle2Size > width/4 || circle2Size < 0) {
    speed3 *= -1;
  }

  if (circle3Size > width/4 || circle3Size < 0) {
    speed2 *= -1;
  }

  if (circle4Size > width/4 || circle4Size < 0) {
    speed4 *= -1;
  }

  circle1Size += speed1;
  circle2Size -= speed3;
  circle3Size -= speed2;
  circle4Size += speed4;
}
