function CA() {
  this.w = 10;
  
  // a array of 0's and ones [they represent the sataes]
  this.cells = new Array(width/this.w);
  for(var i = 0; i < this.cells.length; i++){
    this.cells[i] = 0;
  }
  
  // we start with the middle value to  have state 1
  this.cells[this.cells.length/2] = 1;
  this.generation = 0;
  
  // array to store the rule set example[0,1,1,0,1,1,0,1]
  this.ruleset = [0, 1, 0, 1, 1, 0, 1, 0];
  
  // random first generation
  this.randomInitialGeneration = function() {
    for(var i =0; i < this.cells.length; i++){
      this.cells[i] = Math.round(Math.random());
    }
  }
  
  // the process of creating the new generation
  this.generate = function() {
    // 1) create new array filled with 0's for the new valuse
    var nextgen = [];
    for(var i =0; i < this.cells.length; i++){
      nextgen[i] = 0;
    }
    
    // The generation
    for(var i =1; i < this.cells.length -1; i++){
      // 1) look at the neighborhood
      var left = this.cells[i-1];
      var middle = this.cells[i];
      var right = this.cells[i+1];
      
      // 2) get the value of the new state from the rule set  3) assign the new value to the cell
      nextgen[i] = this.rules(left, middle, right);
    }
    
    // the current generation isthe new generation 
    this.cells = nextgen;
    this.generation++;
  };
  
  // draw the cells
  this.display = function() {
    
     for(var i=0; i <= this.cells.length; i++){
        if(this.cells[i] == 1){fill("#1AA6B7");}
        else {fill("#D9ECF2");}
        
        noStroke(0);
        rect(i*this.w, this.generation * this.w, this.w, this.w);
      }
  };
  
  this.rules = function(a, b, c) {
    if      (a == 1 && b == 1 && c ==1) return this.ruleset[0];
    else if (a == 1 && b == 1 && c ==0) return this.ruleset[1];
    else if (a == 1 && b == 0 && c ==1) return this.ruleset[2];
    else if (a == 1 && b == 0 && c ==0) return this.ruleset[3];
    else if (a == 0 && b == 1 && c ==1) return this.ruleset[4];
    else if (a == 0 && b == 1 && c ==0) return this.ruleset[5];
    else if (a == 0 && b == 0 && c ==1) return this.ruleset[6];
    else if (a == 0 && b == 0 && c ==0) return this.ruleset[7];
  
  return 0;
  };
  
  this.randomRuleSet = function() {
    
    for(var i =0; i < this.ruleset.length; i++){
      this.ruleset[i] = Math.round(Math.random());
    }
    
  }
}