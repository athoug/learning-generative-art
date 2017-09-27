var x = 0;
var y = 0;

function setup() {
  createCanvas(500,500);
  frameRate(5);
}

function draw() {
   background(240);
   fill(random(255),random(255),random(255), 100);
   for(var x = 0; x < width; x+=60){
    for(var y = 0; y < height; y+=60){
      push();
      translate(x, y);
      squares();
      pop();
    }
    
  }
   
}

function squares(){
  noStroke();
  rect(x,y,40,40);
  x += random(-1, 1);
  y += random(-1, 1);
}