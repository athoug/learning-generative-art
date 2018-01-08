void setup() {
  size(240,240);
  background(22, 160, 133);
}
void draw() {
  fill(second()*4, 196, 15);
  rect(second()*4, 160,50,50);
  
  fill(minute()*4, 126, 34);
  rect(minute()*4, 100,50,50);
  
  fill(hour()*4,156, 18);
  rect(hour()*4, 40,50,50);
}