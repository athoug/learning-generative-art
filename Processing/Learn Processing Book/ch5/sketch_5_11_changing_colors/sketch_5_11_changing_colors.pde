// two variables for color
float c1 = 0;
float c2 = 255;

//start by incrementing color 1 and decerenting color 2
int c1Change = 1;
int c2Change = -1;

void setup() {
  size(400,400);
}
void draw() {
  noStroke();
  
  // draw a rectangle on the left
  fill(c1, 0, c2);
  rect(0,0,width/2, height);
  
  // draw a rectangle on the right
  fill(c2, 0, c1);
  rect(width/2,0,width/2, height);
  
  // adjust color values
  c1 += c1Change;
  c2 += c2Change;
  
  //reverse direction of color change
  if(c1 < 0 || c1 > 255) {
    c1Change *= -1;
  }
  
  if(c2 < 0 || c2 > 255) {
    c2Change *= -1;
  }
}