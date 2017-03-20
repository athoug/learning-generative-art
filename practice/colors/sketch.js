function setup() {
  // we represent colors by RGB 
  // how many red - green - blue it has
  // range of the colors are between [0-255]
  // the can also take a 4th argument for alpha
  createCanvas(500, 300);
  // background sets the color of the canvas
  background(51, 0, 51, 200);
}

function draw() {
  noStroke();
  // order of placing these color functions before
  // writing the shapes
  // stroke colors the lines
  // fill fills in the color for a shape
  fill(51, 0, 51);
  quad(200,100,250, 50, 250, 80,230,100);
  rect(200,100, 29,65);
  fill(90, 0, 90, 200);
  quad(200,150,260,180,245,195,200,175);
}