var ca;

function setup() {
  createCanvas(640, 360);
  background("#002D40");
  
  // calling in the CA class
  ca = new CA();
  
  // random initial state
  ca.randomInitialGeneration();
}

function draw() {
  ca.display();
  if(ca.generation < height/ca.w){
    ca.generate();
  }
  
  if (ca.generation >= height/ca.w){
    ca.randomRuleSet();
    ca.generation = 0;
  }
}
