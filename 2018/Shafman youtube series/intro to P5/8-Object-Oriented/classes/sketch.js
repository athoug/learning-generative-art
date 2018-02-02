"use strict";
// bubble instance of the clace
let bubble;

// create a class 
class Bubble {
  constructor() {
    this.x = random(width);
    this.y = random(height);
    this.size = random(4, 44);
  }

  display() {
    stroke(255);
    strokeWeight(4);
    noFill();
    ellipse(this.x, this.y, this.size, this.size);
  }

  move() {
    this.x += random(-5, 5);
    this.y += random(-5, 5);
  }
  
  // updatePosition () {
  //   this.x = random(width);
  //   this.y = random(height);
  // }
}

function setup() {
  createCanvas(600, 400);
  background(0);
  bubble = new Bubble();
}

function draw() {
  
  bubble.move();
  bubble.display();
  //bubble.updatePosition ();
}