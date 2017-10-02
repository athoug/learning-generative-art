var line1Xpoint1;
var line1Ypoint1;

var line2Xpoint2;
var line2Ypoint2;

var line3Xpoint2;
var line3Ypoint2;

var center;

var speed = 1;

var backgroundColor;
var lineColor;

function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
  backgroundColor = color('#2c3e50');
  lineColor = color('#34495e');

  line1Xpoint1 = width/2;
  line1Ypoint1 = 0;

  line2Xpoint2 = 0;
  line2Ypoint2 = height;

  line3Xpoint2 = width;
  line3Ypoint2 = height;

  centery = height/2;
  centerx = width/2;
}

function draw() {

  background(backgroundColor);
  strokeWeight(10);
  stroke(lineColor);
  line(line1Xpoint1, line1Ypoint1, centerx, centery);
  line(centerx, centery, line2Xpoint2, line2Ypoint2);
  line(centerx, centery, line3Xpoint2, line3Ypoint2);
  
  // moving line 1
  if (line1Xpoint1 < width && line1Ypoint1 <= 0) {
    line1Xpoint1 += speed;
  }
  if (line1Xpoint1 <= 0) {
    line1Ypoint1 -= speed;
  } 
  if (line1Ypoint1 == height) {
    line1Xpoint1 -= speed;
  } 
  if (line1Xpoint1 == width) {
    line1Ypoint1 += speed;
  }

  // moving line 2
  if (line2Xpoint2 < width && line2Ypoint2 <= 0) {
    line2Xpoint2 += speed;
  }
  if (line2Xpoint2 <= 0) {
    line2Ypoint2 -= speed;
  } 
  if (line2Ypoint2 == height) {
    line2Xpoint2 -= speed;
  } 
  if (line2Xpoint2 == width) {
    line2Ypoint2 += speed;
  }
  
   // moving line 3
  if (line3Xpoint2 < width && line3Ypoint2 <= 0) {
    line3Xpoint2 += speed;
  }
  if (line3Xpoint2 <= 0) {
    line3Ypoint2 -= speed;
  } 
  if (line3Ypoint2 == height) {
    line3Xpoint2 -= speed;
  } 
  if (line3Xpoint2 == width) {
    line3Ypoint2 += speed;
  }
}
