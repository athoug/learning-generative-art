var rects = [];
function setup() {
  createCanvas(600, 400);
  rectMode(CENTER);
}

function draw() {
  background(0);
  
   
	
  for(var i = 0; i < rects.length; i++){
    
    // move the origin to the pivot point
	  translate(rects[i].x, rects[i].y); 
    // then rotate the grid around the pivot point by a
	  // number of degrees equal to the frame count of the sketch
	  
	  
    rects[i].update();
    rects[i].display();
    
    rotate(radians(frameCount));
  }
}

function mousePressed() {
  var x = mouseX;
  var y = mouseY;
  rects.push(new Rectangle(x, y));
}