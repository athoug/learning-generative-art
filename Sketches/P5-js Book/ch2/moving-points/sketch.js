var y = 0;
var x = 0;

function setup() {
  createCanvas(800, 600);
}

function draw() {
  for(var i=0; i < width; i++) {
    point(i, y);
  }
  
  for(var j=0; j < height; j++) {
    point(x, j);
  }
  background("rgba(100,20,110,0.7)");
  y += 1;
  x += 1;
  if(y > height) {
    y = 0;
  }
  if(x > width) {
    x = 0;
  }
}