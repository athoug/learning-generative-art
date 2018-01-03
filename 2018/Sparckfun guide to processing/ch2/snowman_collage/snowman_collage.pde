void setup() {
  size(1100,850);
  background(25,220,252);
}
void draw() {
  fill(255);
  noStroke();
  rect(0,700,1100,150); // ground
  
  // snowman
  ellipse(550,600,225,225);
  ellipse(550,425,175,175);
  ellipse(550,300,100,100);
  
  // accessorize snowman
  //eyes
  fill(0);
  ellipse(530,280,10,10);
  ellipse(550,280,10,10);
  
  //buttons
  ellipse(550,400,10,10);
  ellipse(550,450,10,10);
  ellipse(550,500,10,10);
  
  // carrot nose
  fill(255,150,0);
  triangle(525,300,530,310,485,310);
  
  // right arm
  stroke(100,15,15);
  strokeWeight(5);
  line(475, 390, 400, 315);
  line(419, 333, 430, 300);
  
  // left arm
  line(625,440,700,530);
  line(668,494,660,525);
  
  // to figure out the exact coordnate of the locations
  println(mouseX + "," + mouseY); // trick to help with location 
  //noLoop();
  
}