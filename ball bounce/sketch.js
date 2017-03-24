var x = 0;
var speed = 3;

function setup() {
  createCanvas(600, 400);
}

function draw() {
  background(0);
  stroke(255);
  strokeWeight(4);
  noFill();
  ellipse(x, 200, 100, 100);
  
  if(x > width){
    speed = -3;
    print("OFF THE SCREEN!");
  }
  if(x < 0){
    speed = 3;
  }
     x+=speed;
  

}