float r = 0;
float backR, backG, backB;

void setup() {
  size(500, 500);

  backR = random(0, 100); 
  backG = random(0, 100);
  backB = random(0, 100);

  background(backR, backG, backB);

  rectMode(CENTER);
  noStroke();
  smooth();
}
void draw() {
  fill(backR, backG, backB, 50);
  rect(width/2, height/2, width, height);

  translate(mouseX, mouseY);
  rotate(r);

  fill(255);
  rect(0, 0, 100, 100);

  r += 0.05;
}