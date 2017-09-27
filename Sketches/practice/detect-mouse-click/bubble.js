function Bubble(x, y) {
  this.x = x;
  this.y = y;
  this.col = color(255, 100);
  this.diametir = 48;
  this.radius = this.diametir/2;
  this.lifespan = 255;
  
  this.display = function() {
    stroke(255);
    fill(this.col);
    ellipse(this.x, this.y, this.diametir, this.diametir);
  };
  
  this.update = function() {
    this.x += random(-1, 1);
    this.y += random(-1, 1);
  };
  
  this.clicked = function(){
    var d = dist(mouseX, mouseY, this.x, this.y);
    if(d < this.radius){
      this.col = color(random(255), random(255), random(255), 100);
    }
  }
  
  this.isFinished = function(){
    return (this.lifespan < 0);
  }
}