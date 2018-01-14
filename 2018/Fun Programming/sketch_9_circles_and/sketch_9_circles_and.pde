size(400, 400); // set the size of the sketch
background(#F5F7F5);

// drawing a rectangle is simillar to in an ellispe in 
// that it too needs 4 parameters
// first two define the location (x, y)
// the third is the width and the forth is the height
// its default drawing more is TOP LEFT
rectMode(CENTER);
fill(#97D8D8);
stroke(#7EB9B9);
rect(width/2, height/2, 150, 150);

// drawing an ellipse take on 4 paprameters
// first two define the location (x, y)
// the third is the width and the forth is the height
// its default drawing more is CENTER
fill(#ACF0DE);
stroke(#7DC1AF);
ellipse(width/2, height/2, 150, 150);