// firework constructor function 
function Firework() {
  this.hu = random(255); // each firework has it's  own color
  this.firework = new Particle(random(width), height, this.hu, true);
  this.exploded = false;
  this.particles = []; // to keep track of the particles of the exploding firework
  
  
  // check if the firework finished
  this.done = function() {
    if(this.exploded && this.particles.length === 0) {
      return true;
    } else {
      return false;
    }
  }
  
  this.update = function() {
    
    // if the firework exists apply force and update it
    if(!this.exploded) {
       // updatet the particle variables
      this.firework.applyForce(gravity);
      this.firework.update();
      
      // explod particles
      if(this.firework.vel.y >= 0) {
        this.exploded = true;
        this.explode();
      }
    }
    
    // apply force firework particles
     for(var i=this.particles.length-1; i >= 0; i--) {
       this.particles[i].applyForce(gravity);
       this.particles[i].update();
       if(this.particles[i].done()) {
         // if the particle fades out, remove it from the array
         this.particles.splice(i,1);
       }
     }
   
  };
  
  // explode function 
   this.explode = function() {
     // have a 100 new particles
     for(var i=0; i<100; i++) {
       var p = new Particle(this.firework.pos.x, this.firework.pos.y, this.hu, false);
       this.particles.push(p);
     }
   }
  
  this.show =function() {
    // show particle if only it exists
     if(!this.exploded) {
        // show the particle
        this.firework.show();
     }
     
     // display firework particles
     for(var i=0; i < this.particles.length; i++) {
       this.particles[i].show();
     }
  };
}