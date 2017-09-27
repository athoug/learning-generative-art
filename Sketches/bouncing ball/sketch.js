var ball = {
  x: 300, 
  y: 200, 
  xspeed: 4, 
  yspeed: -3
  
};

function setup() {
  createCanvas(600, 400);
}

function draw() {
  background(0);
  
  display();
  
  bounce();
  
  move();
  
}

function display(){
  // draws
  stroke(255);
  strokeWeight(3);
  noFill();
  ellipse(ball.x, ball.y, 24, 24);
}

function bounce(){
  // checks for bouncing
  if(ball.x > width || ball.x < 0){
    ball.xspeed *= -1;
  }
  if (ball.y > height || ball.y <0){
    ball.yspeed *= -1;
  }
}

function move(){
  // move ball
  ball.x += ball.xspeed;
  ball.y += ball.yspeed;
}