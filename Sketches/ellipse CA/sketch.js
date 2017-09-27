var ca;
var delay = 0;

function setup() {
  createCanvas(640, 360);
  background(30);
  
  // inicial rule set
  var ruleset  = [0, 1, 0, 1, 1, 0, 1, 0];
  ca = new CA(ruleset);
}

function draw() {
  ca.display();
  ca.generate();
  
  // if we are done by reaching the end of the screen generate a  new rule set and restart
  if(ca.finished()){
    delay++;
    if(delay > 30) {
      background(30);
      ca.randomizeRulset();
      ca.restart();
      delay = 0;
    }
  }
}


function mousePressed() {
  background(255);
  ca.randomizeRulset();
  ca.restart();
}