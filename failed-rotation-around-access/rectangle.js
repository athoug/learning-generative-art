function Rectangle(x, y){
  this.x = x;
  this.y = y;
  this.width = 50;
  
  this.display = function() {
    stroke(255);
    noFill();
    rect(this.x, this.y, this.width, this.width);
  }
  
  this.update = function(){
    this.x += random(-1, 1);
    this.y += random(-1, 1);
  }
}