function setup() {
  createCanvas(500,500);
  frameRate(25);
}

function draw() {
  background(240);
  for(var x = 0; x < width; x+=35){
    for(var y = 0; y < height; y+=35){
      push();
      translate(x, y);
      circleDisco();
      pop();
    }
  }
}

function circleDisco(){
  noStroke();
  fill(random(255), random(255), random(255), 100);
  ellipse(30, 30, 50,50);
}