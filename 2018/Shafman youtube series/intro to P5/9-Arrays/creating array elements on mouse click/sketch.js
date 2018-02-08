"use strict";
// bubble instance of the clace
let bubble = [];
let size = 10;

// create a class 
class Bubble {
  constructor(x, y, r) {
    this.x = x;
    this.y = y;
    this.size = r;
  }

  display() {
    stroke("#e58e26");
    strokeWeight(4);
    noFill();
    ellipse(this.x, this.y, this.size, this.size);
  }

  move() {
    this.x += random(-5, 5);
    this.y += random(-5, 5);
  }

}

function setup() {
  createCanvas(600, 400);
  // for (let i = 0; i < size; i++) {
  //   let x = random(width);
  //   let y = random(height);
  //   let r = random(10, 100);
  //   let newBubble = new Bubble(x, y, r);
  //   bubble.push(newBubble);
  // }

  print(bubble);
}

function draw() {
  background("#0c2461");
  for (let i = 0; i < bubble.length; i++) {
    bubble[i].move();
    bubble[i].display();
  }

}

function mousePressed() {
  let r = random(10, 100);
  let newBubble = new Bubble(mouseX, mouseY, r);
  bubble.push(newBubble);
}