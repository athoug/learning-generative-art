var colors = {
  r: 0, 
  g: 0, 
  b: 0
};

var points = {
  p1X: 0, 
  p1Y: 0,
  p2X: 0, 
  P2Y: 0
};

function setup() {
  createCanvas(600, 400);
}

function draw() {
  background(255);
  
  for(var i=0; i <= width; i+=10){
    colors.r=random(0,255);
    colors.g=random(0,255);
    colors.b=random(0,255);
    stroke(colors.r,colors.g, colors.b);
    
    points.p1X = random(0,width);
    points.p1Y = random(0,height);
    points.p2X = random(0,width);
    points.p2Y = random(0,height);
    line(points.p1X, points.p1Y, points.p2X, points.p2Y);
  }
  
}