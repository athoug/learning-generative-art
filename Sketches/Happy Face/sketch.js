var eyeSize = 15;
var reachedZero = false;
var fr = 25;

function setup() {
  createCanvas(500,300);
  background(100, 230, 190, 100);
}

function draw() {
  noStroke();
  // face
  fill(255,227,159);
  ellipse(250,120,150,150);
  
  // eyes
  fill(112,65,57);
  ellipse(215,110,15,eyeSize);
  ellipse(285,110,15,eyeSize);
  
  // mouth
  noFill();
  stroke(203,132,66);
  arc(250, 150, 60, 60, 0, PI);
  
  // adjust eye blinks animation
  if((eyeSize <= 0 || eyeSize < 15) && reachedZero){
    eyeSize += 1;
    if(eyeSize == 14){
      reachedZero = false;
    }
  } else if(eyeSize <= 15 && !reachedZero){
    eyeSize -= 1;
  }
  
  if(eyeSize == 0){
    reachedZero = true;
  }
  frameRate(fr);
  print(eyeSize);
}