var sizeof = 20;

function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
  background("#ffac4f");
}

function draw() {
  
  // draw circles
  noFill()
  stroke("#ed7d00");
  ellipse(mouseX, mouseY, sizeof, sizeof);
  
  // text content 
  fill("#ed7d00");
  textSize(70);
  textAlign(CENTER);
  text("My Soon to be site", window.innerWidth/2,window.innerHeight/2);
  textSize(50);
  text("[ content loading ... ]", window.innerWidth/2,window.innerHeight/2 + 70);
  
  // update size
  sizeof = random(5, 50);
}