function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(240);
  drawGrid();
  fill(0);
  rect(60, 60, 100, 100);
}

function drawGrid(){
  stroke(200);
  fill(120);
  
  for(var x = -width; x < width; x +=40){
    line(x, -height, x, height);
    text(x, x+1, 12);
  }
  
  for(var y = -height; y < height; y +=40){
    line(-width, y, width, y);
    text(y, 1, y+12);
  }
}