int x1 = 400; // x-coordinate for ellsipse 1
int x2 = 300; // x-coordinate for ellsipse 2
int x3 = 200; // x-coordinate for ellsipse 3

int grow1 = 1; // grow variable for ellsipse 1
int grow2 = 1; // grow variable for ellsipse 2
int grow3 = 1; // grow variable for ellsipse 3

int size = 50;
void setup() {
  size(800, 800);
  background(46, 204, 113);
  smooth(); // a function for drawing shapes with smooth edges
}

void draw() {
  // draw the shape 1
  stroke(26, 188, 156);
  ellipse(x1, 200, size, size);
  
  // draw the shape 2
  stroke(39, 174, 96);
  ellipse(x2, 400, size, size);
  
  // draw the shape 3
  stroke(22, 160, 133);
  ellipse(x3, 600, size, size);
  
  // do the magic of moving the ellipeses, and adjusting them
  x1 += grow1;
  x2 += grow2;
  x3 += grow3;
  
  if(x1 >= width -25 || x1 <= 25){
    grow1 *= -1;  
  }
  
  if(x2 >= width -25 || x2 <= 25){
    grow2 *= -1;  
  }
  
  if(x3 >= width -25 || x3 <= 25){
    grow3 *= -1;  
  }
}