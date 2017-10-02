var zoogX;
var zoogY;

var eyeR;
var eyeG;
var eyeB;

function setup() {
  createCanvas(window.innerWidth, window.innerHeight); // settnig the size of the window
  zoogX = width/2; // Zoog always starts in the middle
  zoogY = height + 100; // Zoog starts below the screen
  frameRate(30);
}

function draw() {
  background(255); // draw a white background

  //set ellipse and rects mode to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);

  // draw zoog's body 
  stroke(0);
  fill(150);
  rect(zoogX, zoogY, 20, 100);

  // draw zoog's head
  fill(255);
  ellipse(zoogX, zoogY -30, 60, 60);

  // draw zoog's eyes
  eyeR = random(255);
  eyeG = random(255);
  eyeB = random(255);
  fill(eyeR, eyeG, eyeB);
  ellipse(zoogX - 19, zoogY -30, 16, 32);
  ellipse(zoogX + 19, zoogY -30, 16, 32);

  // draw zoog's legs
  stroke(0);
  line(zoogX -10, zoogY + 50, zoogX -10, height);
  line(zoogX + 10, zoogY + 50, zoogX + 10, height);

  // Zoog moves up
  zoogY -= 1;

  // zoog Skating left and right
  zoogX += random(-5, 5);
}

function mousePressed() {
  console.log("Take me to your leader!");
}