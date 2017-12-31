// create a firework, and gravity variable
var fireworks = [];
var gravity;

function setup() {
  createCanvas(window.innerWidth, window.innerHeight);
  gravity = createVector(0, 0.2);
  stroke(255);
  strokeWeight(4);
  background(236, 240, 241);
}

function draw() {
  colorMode(RGB);
  background(236, 240, 241, 25);
  
  if(random(1) < 0.03) {
     // add a firework object 
     fireworks.push(new Firework());
  }
 
  // look at all the fireworks 
  for(var i=fireworks.length-1; i >= 0; i--) {
    fireworks[i].update();
    fireworks[i].show();
    
    if(fireworks[i].done()) {
       // if the particle fades out, remove it from the array
         fireworks.splice(i,1);
    }
  }
}