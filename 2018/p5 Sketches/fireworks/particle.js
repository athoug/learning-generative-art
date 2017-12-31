function Particle(x, y, hu, firework) {
    
  // create a position for the particle
  this.pos = createVector(x,y);
  // keep track of firework
  this.firework = firework;
  // a variable to make the particle fade out when exploded
  this.lifespan = 255;
  // get the color of the firework
  this.hu = hu;
  
  // if it's a shooting fore work, have the velocity be this way else make it the exploder velocity
  if(this.firework) {
    // give it a velocity 
    this.vel = createVector(0,random(-15,-8));
  } else {
     // give it a velocity 
     this.vel = p5.Vector.random2D();
     this.vel.mult(random(2,10));
  }
  
  // give it an acceleration
  this.acc = createVector(0,0);
  
  // getting acceleration 
  this.applyForce = function(force){
    this.acc.add(force);
  }
  
  // an update function 
  this.update = function() {
    if(!this.firework) {
      this.vel.mult(0.9);
      this.lifespan -= 4;
    }
    // this function takes the velocity and adds it to the position
    // it also takes the acceleration and adds it to the velocity 
    this.vel.add(this.acc);
    this.pos.add(this.vel);
    
    // reset the acceleration
    this.acc.mult(0);
  };
  
  // function to check if the particle fadded out 
  this.done = function() {
    if(this.lifespan < 0) {
      return true;
    } else {
      return false;
    }
  }
  
  // show the particle 
  this.show = function() {
    colorMode(HSB);
    if(!this.firework) {
      strokeWeight(2);
      stroke(this.hu, 255, 255, this.lifespan);
    } else {
      strokeWeight(4);
      stroke(this.hu, 255, 255);
    }
    
    point(this.pos.x, this.pos.y);
  }
}