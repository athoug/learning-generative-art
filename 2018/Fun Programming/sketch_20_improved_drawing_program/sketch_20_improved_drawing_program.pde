int count_drawing = 1;

void setup() {
  size(500, 500); // set canvas size 
  background(#6c5ce7); // purple background
  stroke(#a29bfe); // light purple stroke color
  strokeWeight(5); // increase the size of the point
}
void draw() {
  if (mousePressed) {
    point(mouseX, mouseY);
  }
}
void draw_top_line() {
  strokeWeight(10);
  line(0, 0, width, 0);
  strokeWeight(5);
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    save("my-drawing-"+count_drawing+".png");
    println("saved file my-drawing-"+count_drawing+".png"); 
    // increment file number
    count_drawing++;
  }

  if ( key == 'b' || key == 'B') {
    background(random(255), random(255), random(255)); // random background
    draw_top_line();
  }

  if (key == 'c' || key == 'C') {
    stroke(random(255), random(255), random(255));
    draw_top_line();
  }
}