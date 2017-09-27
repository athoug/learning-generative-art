function setup() {
    createCanvas(window.innerWidth, window.innerHeight);
    background(85,64,255);
}

function draw() {
  noStroke();
  if(mouseIsPressed){
    fill(118,46,232,100);
  } else {
    fill(46,75,232,100);
  }
    ellipse(mouseX,mouseY,40,40);
}
