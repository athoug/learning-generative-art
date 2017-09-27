function setup() {
  createCanvas(600,400);
}

function draw() {
   background(0);
   stroke(255);
   strokeWeight(4);
   noFill();
   
   if(mouseX > 250 && mouseX < 350 && mouseY > 150 && mouseY < 250) {
     fill(250, 0, 200);
   }
   
   rect(250, 150, 100, 100);
}