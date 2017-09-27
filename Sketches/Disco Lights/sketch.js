function setup() {
  createCanvas(600, 400);
}

function draw() {
   background(0);
   strokeWeight(4);
   stroke(255);
   
  for(var x = 0; x<= mouseX ; x+=50) {
    for(var y = 0; y<=mouseY ; y+=50){
      fill(random(255), 0, random(255));
      ellipse(x, y, 25, 25);
    }
  }
}