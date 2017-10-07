float x = 100;
float y = 100;
float w = 60;
float h = 60;
float eyeSize = 16;

// zoog has variable for speed in both horizontal and vertical directions
float xspeed= 3;
float yspeed = 1;

void setup() {
  size(200, 200);
}
void draw() {
  //change location of zoog by speed
  x += xspeed;
  y += yspeed;

  if ((x < 0) || (x > width)) {
    xspeed *= -1;
  }

  if ((y < 0) || (y > height)) {
    yspeed *= -1;
  }
  
  background(255);
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  // draw zoogs body
  stroke(0);
  fill(150);
  rect(x,y,w/6,h*2);
  
  // draw zoogs head
  fill(255);
  ellipse(x, y-h/2, w, h);
  
  // draw zoog's eyes
  fill(0);
  ellipse(x-w/3, y-h/2, eyeSize, eyeSize*2);
  ellipse(x+w/3, y-h/2, eyeSize, eyeSize*2);
  
  // draw zoog's legs
  stroke(0);
  line(x-w/12, y+h, x-w/4, y+h+10);
  line(x+w/12, y+h, x+w/4, y+h+10);
}