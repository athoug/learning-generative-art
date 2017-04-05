var theLine;
var updateX = -2;
var updateY = 2;
function setup() {
  createCanvas(500,500);
  
  theLine = {
  p1x:0, 
  p1y:1, 
  p2x: width,
  p2y:1, 
  
  display: function(){
    strokeWeight(2);
    stroke(255);
    line(this.p1x, this.p1y, this.p2x, this.p2y);
  }, 
  update: function(){
    
    
    if(this.p2y > height){
       this.p2x += updateX;
    } else {
      this.p2y += updateY;
    } 
    
    if(this.p2x < 0) {
      updateX *= -1;
    }
    
    if(this.p2x > width && this.p2y > height) {
      updateY *= -1;
      this.p2y += updateY;
      this.p2x = width;
    }
    
    if(this.p2y < 0){
      updateY *= -1;
      updateX *= -1;
      this.p2y += updateY;
    }
  }
};

}

function draw() {
  background(51);
  theLine.display();
  theLine.update();
}