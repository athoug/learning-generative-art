function setup() {
  createCanvas(window.innerWidth, window.innerHeight); // set up the size of the window
}
function draw() {
    background(142, 68, 173); // setup a background colorod a shade of purple
    stroke(155, 89, 182); // set up a light purple shade for the lines to be drawn
    strokeWeight(10); // increase the line width
    line(0, random(height), width, random(height));
}
