int first, second, third, forth, fifth;
int add1, add2, add3, add4, add5;

void setup() {
  size(600, 600);
  noFill();
  strokeWeight(10);

  first = 450;
  second = 350;
  third = 250;
  forth = 150;
  fifth = 50;

  add1 = 5;
  add2 = 4;
  add3 = 3;
  add4 = 2;
  add5 = 1;
}
void draw() {
  background(#FAC25D);

  stroke(#C74C4C);
  ellipse(300, 300, first, first);

  stroke(#FFFFFF);
  ellipse(300, 300, second, second);

  stroke(#C74C4C);
  ellipse(300, 300, third, third);

  stroke(#FFFFFF);
  ellipse(300, 300, forth, forth);

  stroke(#C74C4C);
  ellipse(300, 300, fifth,fifth);

  first += add1;
  second += add2;
  third += add3;
  forth += add4;
  fifth += add5;

  if (first > width || first < 450) {
    add1 *= -1;
  }

  if (second > 440 || second < 350) {
    add2 *= -1;
  }

  if (third > 340 || third < 250) {
    add3 *= -1;
  }

  if (forth > 240 || forth < 150) {
    add4 *= -1;
  }
  
  if (fifth > 140 || fifth < 50) {
    add5 *= -1;
  }
}