var ca;

function setup() {
  createCanvas(360, 600);
  var ruleset = new Array(0,1,0,1,1,0,1,0);
  
  // initialize CA
  ca = new CA(ruleset);
  ca.randomize();
}

function draw() {
  background(51);
  ca.display();
  ca.generate();
 
}