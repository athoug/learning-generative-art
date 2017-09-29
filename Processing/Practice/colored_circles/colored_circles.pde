// setup only gets run once
void setup(){
size(800,600);
frameRate(30);
}
void draw(){
noStroke();
fill(random(255), 255, random(255));
ellipse(mouseX, mouseY, 100, 100);

}