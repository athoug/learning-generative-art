var balls = [100, 25, 46, 72];
var x = 0;

function setup() {
  createCanvas(500, 400);
   background(51);
}

function draw() {
  stroke(255);
  fill(0);
  
  for(var i = 0; i < balls.length; i++){
      x += 100;
     ellipse(x, 200, balls[i], balls[i]);
  }
  
  x = 0;
}