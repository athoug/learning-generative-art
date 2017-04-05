function setup() {
  
  createCanvas(200,200);
  createElement("h4", "Myfavorite numbers bellow:");
}

function mousePressed(){
   createP("My favorite number is " + floor(random(0, 100)));
}

function draw() {
  background(51);
  noStroke();
  fill(255, 0, 0, 100);
  rect(100,100,50,50);
}