// working with colors 
// RGB (Are additive colors they start withblack and you add white to it)
// CYMK (Are subtractive colors so they start with white and you remove white from it)

void setup(){
  frameRate(4);
}
// we add the random background inside a draw for it to loop and generate 
// a random background multiple timesbe second 
// to give us an animate dbackground color
void draw() {
  background(random(255), random(255), random(255));
}