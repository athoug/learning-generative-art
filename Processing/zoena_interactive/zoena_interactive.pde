color bgColor;

void setup() {
  size(800, 600);
  bgColor = #B4FFC1;
  

  ellipseMode(CENTER);
  rectMode(CENTER);
}
void draw() {
   background(bgColor);
   
  // Zoena's neck
  noStroke();
  fill(#EAD3A1);
  rect(mouseX + 38, mouseY + 100, 70, 105);
  stroke(#E8B64B);
  strokeWeight(3);
  line(mouseX + 5, mouseY +50, mouseX + 5, mouseY +150);
  line(mouseX + 70, mouseY +40, mouseX + 70, mouseY +150);

  // Zoena's face
  stroke(#E8B64B);
  strokeWeight(3);
  fill(#EAD3A1);
  ellipse(mouseX, mouseY, 150, 200);

  // Zoena's hear
  stroke(3, 2, 2);
  fill(62, 60, 56, 230);
  ellipse(mouseX + 20, mouseY - 110, 120, 120);
  ellipse(mouseX + 90, mouseY - 40, 120, 160);

  // Zoena's white eyes 
  stroke(3, 2, 2);
  strokeWeight(2);
  fill(255);
  ellipse(mouseX - 45, mouseY - 10, 45, 25);
  ellipse(mouseX + 45, mouseY - 10, 45, 25);

  // Zoena's eye balls
  noStroke();
  fill(mouseY, 100, mouseX);
  ellipse(mouseX - 45, mouseY - 10, 15, 15);
  ellipse(mouseX + 45, mouseY - 10, 15, 15);

  // Zoena's eye brows
  stroke(3, 2, 2);
  strokeWeight(10);
  line(mouseX - 65, mouseY - 30, mouseX - 25, mouseY - 40);
  line(mouseX + 15, mouseY - 40, mouseX + 55, mouseY - 30);

  // Zoena's nose
  stroke(#E8B64B);
  strokeWeight(3);
  line(mouseX - 10, mouseY, mouseX - 10, mouseY + 50);
  line(mouseX - 7, mouseY + 50, mouseX + 10, mouseY + 50);
}

void mousePressed() {
  bgColor = color(random(255), random(255), random(255));
}