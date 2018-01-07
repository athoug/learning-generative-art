function setup() {
  createCanvas(window.innerWidth, window.innerHeight); // set up the size of the window
}
function draw() {
    background(20); // setup a background colorod a shade of black
    stroke(250); // set up a white shade for the lines to be drawn
    line(0, random(height), width, random(height));
}