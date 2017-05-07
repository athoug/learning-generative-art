function GOL() {
  
  this.w = 8; // width of the rect
  
  // creating the grid
  this.columns = width/this.w;
  this.rows = height/this.w;
  this.board = new Array(this.columns);
  for (var i = 0; i < this.columns; i++){
    this.board[i] = new Array(this.rows);
  }
  
  // creating multiple 2D arrays and swap them
  this.next = new Array(this.columns);
  for( var i =0; i < this.columns; i++){
    this.next[i] = new Array(this.rows);
  }
  
  // initialize th egrid with random states
  this.init = function() {
    for( var i = 0; i < this.columns; i++) {
      for( var j = 0; j < this.rows; j++) {
        // lining the edges with 0s
        if(i === 0 || j === 0 || i == this.columns-1 || j == this.rows) this.board[i][j] = 0;
        // fill the rest of the board with random states
        else this.board[i][j] = Math.floor(random(2));
        this.next[i][j] = 0;
      }
    }
  };
  
  this.init();
  
  // the process of creating the new generation
  this.generate = function() {
    // loop through every spot in the 2D array and check spots neighbors
    for(var x = 1; x < this.columns-1; x++){
      for(var y = 1; y < this.rows-1; y++){
        // add up all the states in a 3x3 surrounding grid
        var neighbors = 0;
        
        for(var i = -1; i <= 1; i++){
          for(var j = -1; j <= 1; j++){
            neighbors += this.board[x+i][y+j];
          }
        }
        
        // subtract the curretn cell's state 
        // since we added it in the above loop 
        neighbors -= this.board[x][y];
        
        // rules of life [ the ruleset]
        if      ((this.board[x][y] == 1) && (neighbors < 2))   this.next[x][y] = 0; // Loneliness
        else if ((this.board[x][y] == 1) && (neighbors > 3))   this.next[x][y] = 0; // Overpopulation
        else if ((this.board[x][y] === 0) && (neighbors == 3)) this.next[x][y] = 1; // Reproduction
        else                                                   this.next[x][y] = this.board[x][y]; // statoc
      }
    }
    
    // swap
    var temp = this.board;
    this.board = this.next;
    this.next =  temp;
  };
  
  // draw cells with a fill of 255 for '1' fill 0 for 0
  this.display = function(){
    for( var i = 0; i < this.columns; i++){
      for( var j = 0; j < this.rows; j++){
        if(this.board[i][j] == 1) fill(0);
        else fill(255);
        stroke(0);
        rect(i*this.w, j*this.w, this.w, this.w);
      }
    }
  };
  
}





























