void setup() {
  size(800, 600);
}
void draw() {
  background(#B4FFC1);

  ellipseMode(CENTER);
  rectMode(CENTER);

  // Zoena's neck
  noStroke();
  fill(#EAD3A1);
  rect(438, 400, 70, 105);
  stroke(#E8B64B);
  strokeWeight(3);
  line(405, 350, 405, 450);
  line(470, 340, 470, 450);

  // Zoena's face
  stroke(#E8B64B);
  strokeWeight(3);
  fill(#EAD3A1);
  ellipse(400, 300, 150, 200);

  // Zoena's hear
  stroke(3, 2, 2);
  fill(62, 60, 56, 230);
  ellipse(420, 190, 120, 120);
  ellipse(490, 260, 120, 160);

  // Zoena's white eyes 
  stroke(3, 2, 2);
  strokeWeight(2);
  fill(255);
  ellipse(355, 290, 45, 25);
  ellipse(445, 290, 45, 25);

  // Zoena's eye balls
  noStroke();
  fill(#A08002);
  ellipse(355, 290, 15, 15);
  ellipse(445, 290, 15, 15);

  // Zoena's eye brows
  stroke(3, 2, 2);
  strokeWeight(10);
  line(335, 270, 375, 260);
  line(415, 260, 455, 270);

  // Zoena's nose
  stroke(#E8B64B);
  strokeWeight(3);
  line(390, 300, 390, 350);
  line(393, 350, 410, 350);
}