int G = 29;  // This is a Global variable

void settings() {
  int L = 300; // This is a Local variable
  size(100, L);
}

void setup() {
}
void draw() {
  background(G, 200, 0);
}