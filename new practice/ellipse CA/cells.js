function CA(r) {
  
  // I want the width of the shape 
  this.w = 5;
  // the cells that I will hold
  this.cells = new Array(width/this.w);
  // I need a variable to keep track of the generation i am in
  this.generation;
  
  // the rules that will deside what is the state of my next generation
  this.ruleset = r;
  
  // a funcion to generate a random rulset if wanted
  this.randomizeRulset = function() {
    for(var i = 0; i < 8; i++){
      this.ruleset[i] = Math.floor(random(2));
    }
  };
  
  // a function to reset the generation 
  this.restart = function() {
    for (var i = 0; i < this.cells.length; i++){
      this.cells[i] = 0;
    }
    
    // having the middle cell be number 1
    this.cells[this.cells.length/2] = 1;
    this.generation = 0;
  }
  
  this.restart();
  
  // the func tion that is responsable for creating a new generation 
  this.generate = function() {
    
    // we need a placeholder array to hold the new states while we evaluate the old states
    var nextgen = new Array(this.cells.length);
    
    // now look at the neighbors of the cells to determine the new state
    for(var i = 1; i < this.cells.length -1; i++){
      // 1) locate the neighbors
      var left = this.cells[i-1];
      var mid = this.cells[i];
      var right = this.cells[i+1];
      
      // 2) grab the new state and asisgn it ot the place holder array
      nextgen[i] = this.rules(left, mid, right);
    }
    
    // now make sure you pass the placholder to the actuall generation 
    this.cells = nextgen;
    // update the generation count 
    this.generation++;
  };
  
  // the display function 
  this.display = function() {
    for(var i =0; i < this.cells.length; i++){
      if (this.cells[i] == 1) fill(250);
      else                    fill(30);
      
      noStroke();
      ellipse(i * this.w, this.generation * this.w, this.w, this.w);
    }
  };
  
  // Implementing the Wolfram rules
  // This could be condensed probably, here is java way
  /*int rules (int a, int b, int c) {
    String s = "" + a + b + c;
    int index = Integer.parseInt(s, 2);
    return ruleset[index];
  }*/
  this.rules = function(a, b, c) {
  	if (a == 1 && b == 1 && c == 1) return this.ruleset[0];
  	if (a == 1 && b == 1 && c === 0) return this.ruleset[1];
  	if (a == 1 && b === 0 && c == 1) return this.ruleset[2];
  	if (a == 1 && b === 0 && c === 0) return this.ruleset[3];
  	if (a === 0 && b == 1 && c == 1) return this.ruleset[4];
  	if (a === 0 && b == 1 && c === 0) return this.ruleset[5];
  	if (a === 0 && b === 0 && c == 1) return this.ruleset[6];
  	if (a === 0 && b === 0 && c === 0) return this.ruleset[7];
  	return 0;
  };
  
  
  // check if the CA is done [it does when it reaches the bottom of the screen]
  this.finished = function() {
    if(this.generation > height/this.w) {
      return true;
    } else {
      return false;
    }
  };
  
}