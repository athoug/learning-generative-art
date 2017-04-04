
var sqrtList = [];  

function setup() {
  createCanvas(600,400);
}

function draw() {
  background(30);
  for(var i =0; i < sqrtList.length; i++){
    push();
    translate(sqrtList[i].x, sqrtList[i].y);
    rotate(radians(frameCount));
    sqrtList[i].display();
    pop();
  }
}

function mousePressed(){
  var square = {
  x:0,
  y:0,
  w:50, 
  display: function(){
    noFill();
    strokeWeight(2);
    stroke(255);
    rect(0, 0, this.w, this.w);
  },
  updateCord: function(x, y){
    this.x = x;
    this.y = y;
  }
};

square.updateCord(mouseX, mouseY);
sqrtList.push(square);

}