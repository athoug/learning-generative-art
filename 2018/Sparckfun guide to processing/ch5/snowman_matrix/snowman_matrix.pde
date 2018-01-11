int x = -300; //nessisary integers from project 3
int grow = 5; // variable to increment by

void setup() {
  size(900,900); // window 900x900
}
void draw() {
  background(26, 188, 156); // green background
  
  pushMatrix(); // beginning of matrix
    translate(x, 0);
    noStroke();
    
    fill(255); // white
    ellipse(400, 350,125,125);
    ellipse(400,500,200,200);
    ellipse(400,700,300,300);
    
    fill(255, 141, 0);
    triangle(340,345,300,350,347,354);
    fill(0);
    ellipse(350,325,10,10);
    ellipse(375,325,10,10);
    ellipse(400,500,20,20);
    ellipse(400,550,20,20);
    ellipse(400,600,20,20);
    
    stroke(121, 85, 17);
    strokeWeight(10);
    line(300,500,200,400);
    line(500,500,300,600);
    line(223,423,228,398);
    line(336,585,337,605);
    
    x += grow;
    
    if(x >= width || x <= -300) { // keep x between 0 and width
      grow *= -1;
    }
  popMatrix();
}