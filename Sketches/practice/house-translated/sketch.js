function setup() {
  createCanvas(400,400);
}

function draw() {
  background(240);
  
  for(var x=5; x < 400; x+=50){
    for(var y=5; y < 400; y+=50){
      push();
      translate(x, y);
      drawHouse();
      pop();
    }
  }
}

function drawHouse(){
  triangle(15,0,0,15, 30, 15);
  rect(0,15, 30,25);
  rect(12,30,10,10);
}