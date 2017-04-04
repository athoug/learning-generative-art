function setup() {
   createCanvas(500,500);
   frameRate(5);
}

function draw() {
  background(240);
  for(var x = 0; x < width; x+=60){
    for(var y = 0; y < height; y+=60){
      push();
      translate(x, y);
      faces();
      pop();
    }
  }
  
  // faces();
}

function faces(){
  noStroke();
  fill(255,255,153);
  ellipse(35, 35, 60,60);
  fill(51);
  ellipse(25, 30, 5,5);
  ellipse(44, 30, 5,5);
  noFill();
  stroke(2);
  var numbers = [1,2,3];
  var random_number = random(numbers);
  if(random_number == 1){
    arc(35,35,40,40,0, PI);
  }
  if(random_number == 2){
      arc(35, 55, 30, 20, PI, 0);
  }
  if(random_number == 3){
      line(25, 55, 45, 55);
  }

}
