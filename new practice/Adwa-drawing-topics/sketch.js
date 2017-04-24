// create the list of topics
var topic;



function setup() {
  createCanvas(windowWidth, windowHeight);
  background("#ED147A");
  
  fill("#F17AAC");
  textSize(52);
  textStyle(BOLD);
  textAlign(CENTER);
  text("CLICK TO GENERATE A TOPIC", width/2, 225);
  
  topic = new Topics();

}

function draw() {
  
}

function mousePressed() {
 
  topic.display();
}