// a ball object
var ball = {
  x: 300,
  y: 200,
  xspeed: 4,
  yspeed: -3,
  bsize: 24
};

function setup() {
  createCanvas(600, 400);
}

function draw() {
  background(22, 160, 133);

  // draw the ball
  display();
  // check coliders
  bounce();
  // move the ball
  move();

}

// making the program modular by defining functions
function move() {
  ball.x += ball.xspeed;
  ball.y += ball.yspeed;
}

function bounce() {
  if (ball.x > width || ball.x < 0) {
    ball.xspeed *= -1;
  }
  if (ball.y > height || ball.y < 0) {
    ball.yspeed *= -1;
  }
}

function display() {
  stroke(241, 196, 15);
  strokeWeight(4);
  noFill();
  ellipse(ball.x, ball.y, ball.bsize, ball.bsize);
}