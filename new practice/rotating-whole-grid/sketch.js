function setup() {
  createCanvas(400,400);
}

function draw() {
  var deg = mouseX;
  var rad = radians(deg);
  
  background(240);
  
  // the redrectangle is drawn before the rotaion
  // it will stay in place
  fill(255,0,0,150);
  rect(200,200,100,100);
  line(0,0,200,200);
  
  fill(0,255,0,150);
  text("rotate " + floor(deg)+ " degrees", 200,50);
  
  // rotation starts here
  rotate(rad);
  
  // draw the grid
  drawGrid();
  
  // the green rectangle and grid is drawn after rotating the canvas
	rect(200, 200, 100, 100);
	line(0, 0, 200, 200);	
}

function drawGrid() {
	stroke(200);
    fill(120);
	for (var x=-2*width; x < 2*width; x+=40) {
		line(x, -2*height, x, 2*height);
		text(x, x+1, 12);
	}
	for (var y=-2*height; y < 2*height; y+=40) {
		line(-2*width, y, 2*width, y);
		text(y, 1, y+12);
	}
}