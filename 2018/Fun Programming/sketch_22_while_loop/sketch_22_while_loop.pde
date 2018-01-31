size(400, 400);
colorMode(HSB);
// chose a random background color using Hue, Saturation, and Brightness
background(random(255), random(255), random(255));
noFill();
stroke(255, 100);

float i = 0; // initialize a variable

while (i < 100) { // check if condition is true
  ellipse(100 + (i*2), 100 + (i*3), 100 + i, 100 -i);

  i += 1; // update conditional variable to end loop
}

print("end");