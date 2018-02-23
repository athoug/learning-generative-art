import ddf.minim.*;

Minim minim; 
AudioSample sample;

void setup() {
  minim = new Minim(this);
  sample = minim.loadSample("sample.mp3", 1024);
}
void draw() {
  sample.trigger();
}