var gol;

function setup() {
  createCanvas(640, 360);
  gol = new GOL();
}

function draw() {
  background(255);
  gol.generate();
  gol.display();
}

// reset board when mouse is pressed
function mousePressed(){
  gol.init();
}