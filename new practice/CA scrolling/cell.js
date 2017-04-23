function CA(r) {
  // how many generation we have
  this.generation = 0;
  
  // The array storing the ruleset that makes up the rules of teh CA
  this.ruleset = r;
  this.w = 4;
  this.cols = width/this.w;
  this.rows = height/this.w;
  
  // Store the history of genrations in 2D array, not just one
  this.matrix = new Array(this.cols);
  for(var i = 0; i < this.cols; i++){
    this.matrix[i] = new Array(this.rows);
  }
  
  // reset to generation 0 
  this.restart = function() {
    for(var i = 0; i < this.cols; i++){
      for(var j = 0; j < this.rows; j++){
        this.matrix[i][j] = 0;
      }
    }
    this.matrix[this.cols/2][0] = 1; 
    this.generation = 0;
  };
  
  this.restart();
  
  // make a random rulset
  this.randomize = function(){
    for(var i = 0; i < 8; i++){
      this.ruleset[i] = Math.floor(random(2));
    }
  }
  
  // The process of creating the new generation 
  this.generate = function() {
    // for every spot determine new state by examining current state and neighboring states
    // ignore edges that only have one heighbor
    for(var i = 0; i <this.cols; i++){
      var left = this.matrix[(i+this.cols-1)%this.cols][this.generation%this.rows]; // left neighbor state
      var me = this.matrix[i][this.generation%this.rows]; // current stae
      var right = this.matrix[((i+1)%this.cols)][this.generation%this.rows]; // right neighbor state
      this.matrix[i][(this.generation+1)%this.rows] = this.rules(left, me, right); // compute next generation based on ruleset
      
    }
    this.generation++;
  };
  
  // display teh shape and change fill value based on state
  this.display = function() {
    var offset = this.generation%this.rows;
    
    for(var i = 0 ; i < this.cols; i++){
      for(var j = 0; j < this.rows; j++){
        var y = j - offset;
        if(y <= 0) y = this.rows + y;
        //only draw if cell state is 1
        if(this.matrix[i][j] == 1){
          fill(255);
          noStroke();
          rect(i*this.w, (y-1)* this.w, this.w, this.w);
        }
      }
    }
  };
  
  this.rules = function(a, b, c) {
    var s = "" + a + b + c;
    var index = parseInt(s, 2);
    return this.ruleset[index];
  };
  
  // the CA is done if it reaches the bottom of the screen
  this.finished = function(){
    if(this.generation > height/this.w){
      return true;
    } else {
      return false;
    }
  }
}





















