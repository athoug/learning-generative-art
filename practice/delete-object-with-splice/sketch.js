var bubbles = [];

function setup() {
  createCanvas(600, 400);
  // for(var i=0; i < 10; i++){
  //   var x = random(width);
  //   var y = random(height);
  //   bubbles.push(new Bubble(x, y));
  // }
}

function draw() {
  background(0);
  for(var i=bubbles.length-1; i >= 0 ; i--){
    bubbles[i].update();
    bubbles[i].display();
    
    if(bubbles[i].isFinished()){
      bubbles.splice(i, 1);
    }
  }
}

// function mousePressed(){
//   for(var i=0; i <bubbles.length; i++){
//     bubbles[i].clicked();
//   }
// }

function mousePressed(){
  var b = new Bubble(mouseX, mouseY);
  bubbles.push(b);
}