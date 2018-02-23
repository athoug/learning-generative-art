import ddf.minim.*;

Minim minim;
AudioInput mic;

int x = 1;

void setup() {
  size(500,200);
  
  minim = new Minim(this);
  mic = minim.getLineIn();
  
  frameRate(120);
  background(#574b90);
}
void draw() {
  //stroke(#786fa6);
  stroke(abs(mic.left.get(0) * 1000), 0, 255); // playing with the stroke to include audio functions
  line(x, (height - 20), x, ((height-20) - abs(mic.left.get(0) * 200)));
  x += 1;
  
  if(x >= width) {
    background(#574b90);
    x = 0;
  }
}