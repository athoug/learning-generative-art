void setup() {
size(200,200);
rectMode(CENTER);
ellipseMode(CENTER);
}

void draw() {
  line(0,0, width, height);
  line(width, 0, 0, height);
  rect(width/8, height/2, width/8, height/8);
  rect(width - width/8, height/2, width/8, height/8);
  ellipse(width/2, height/2, width/2, height/2);
}