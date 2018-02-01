size(400, 400);
colorMode(HSB);
//chose a random background
background(random(255), random(255), random(255));
// shape or pattern properties
noFill();
stroke(255, 100); // we add alpha to the stroke color

float i = 0; // declare and initialize the counter
while (i < 70) {
  // very interesting shape
  //ellipse(width/2, height/2, 100+i, 100-(i*2));
  //ellipse(width/2, height/2, 100+(i*3), 100+(i*3));
  //ellipse(width/2 + i, height/2, 100+(i*3), 100+(i*3));
  //ellipse(width/2 + i, height/2, 100+(i*3), 100-(i*3));
  ellipse(width/2 + i, height/2 - i, 100+(i*5), 100-(i*5));

  i += 2; // increment the counter to avoid infinate loops
}

print("end");