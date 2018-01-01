function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
  background(241, 196, 15);
  stroke(230, 126, 34);
  strokeWeight(2);
}

function draw() {
  line(random(width), random(height), random(width), random(height));
}