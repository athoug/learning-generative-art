function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
 frameRate(30);
}

function draw() {
  background(255); // draw a white background

  //set ellipse and rects mode to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);

  // draw zoog's body 
  stroke(0);
  fill(150);
  rect(mouseX, mouseY, 20, 100);

  // draw zoog's head
  fill(255);
  ellipse(mouseX, mouseY -30, 60, 60);

  // draw zoog's eyes
  fill(mouseX, 0, mouseY);
  ellipse(mouseX - 19, mouseY -30, 16, 32);
  ellipse(mouseX + 19, mouseY -30, 16, 32);

  // draw zoog's legs
  stroke(0);
  line(mouseX -10, mouseY + 50, pmouseX - 20, pmouseY + 60);
  line(mouseX + 10,  mouseY + 50, pmouseX + 20, pmouseY + 60);
}

function mousePressed() {
console.log("Take me to your leader!");
}