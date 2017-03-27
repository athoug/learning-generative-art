var squares = [];

function setup() {
  createCanvas(600,600);
  
  for(var i = 0; i < 10; i++){
    squares[i] = {
      x: 300,
      y: 300,
      display: function(){
        stroke(255);
        noFill();
        rect(0, 0, 100, 100);
      }
    };
  }
 
}

function draw() {
  background(31);
  
  // move the origin to the pivot point
	translate(300, 300);
	
  for(var i = 0; i < 10; i++){
    // then rotate the grid around the pivot point by a
	  // number of degrees equal to the frame count of the sketch
	  rotate(radians(frameCount));
    squares[i].display();
  }
  
}