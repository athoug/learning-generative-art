float h, s, b; // variables to hold the hue, andturation, and brightness

void setup() {
  size(200, 200);
  colorMode(HSB);

  h = random(255);
  s = random(255);
  b = random(255);
}
void draw() {
  background(h, s, b);
  // show the keyCode Pressed presets
  textSize(50);
  fill(255);

  if (key == CODED) {
    text(keyCode, 30, 100);
  } else {
    text(int(key), 30, 100);
    text(key, 130, 100);
  }
}