// using built in variables or rather
// time based variables as paramenters
// to create time based art

void setup() {
  size(200,200);
}
void draw() {
  fill(second()*4,0,0); // shade of red based on the value of seconds
  rect(50,50,100,100);
  
}