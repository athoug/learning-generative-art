var ca;

function setup() {
  createCanvas(600, 400);
  background(51);
  ca = new CA();
  
  ca.init();
}

function draw(){
  ca.display();
}

function mousePressed(){
  ca.init(2);
}