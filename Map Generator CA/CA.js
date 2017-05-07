function CA() {
  // varables 
  this.shapeSize = 10;
  this.width = 600/this.shapeSize;
  this.height = 400;
  
  this.cell = new Array(this.height);
  for(var i = 0; i < this.height; i++){
    this.cell[i] = new Array(this.width);
  }
  
  // randomly fill the map with 0 or 1
  this.randomize = function(){
    // randomly fill in the arrays 
    for(var x = 0; x < this.height; x++){
      for(var y = 0; y < this.width; y++){
        this.cell[x][y] = Math.round(random(1));
      }
    }
  }
  
  // run the CA rule
  this.generate = function(){
    // create a new empty array 
    var newCell  = new Array(this.height);
    for(var i = 0; i < this.height; i++){
      newCell[i] = new Array(this.width);
    }
    
    // wall rules
    for(var x = 1; x < this.height-1; x++){
    for(var y = 1; y < this.width-1; y++){
      var neighboredWalls = this.countWalls(this.cell, x, y);
      if(this.cell[x][y] == 1){
        if(neighboredWalls >= 4) {newCell[x][y] = 1;}
        else {newCell[x][y] = 0;}
      } else {
        if(neighboredWalls >= 5) {newCell[x][y] = 1;}
        else {newCell[x][y] = 0;}
      }
    }
  }
  
  var temp = this.cell
  this.cell = newCell;
  newCell = temp;
  
  }
  
  // count neighborhood
  this.countWalls = function(cell, x, y){
    var neighbors = 0;
  
    for(var i = -1; i < 2; i++){
      for(var j = -1; j < 2; j++){
        neighbors += cell[x + i][y + j];
      }
    }
    
    neighbors -= cell[x][y];
    
    return neighbors;
  }
  
  this.display = function() {
    // draw map 
    for(var x = 0; x < this.height; x++){
      for(var y = 0; y < this.width; y++){
        if(this.cell[x][y] == 1) fill(0);
        else                fill(51);
        noStroke();
        rect(x * this.shapeSize, y * this.shapeSize, this.shapeSize, this.shapeSize);
      }
    }
  }
  
  this.init = function(){
    this.randomize();
    this.generate();
  }
  
  this.init = function(generation){
    this.randomize();
    for(var i = 0; i <generation; i++){
      this.generate();
    }
  }
}