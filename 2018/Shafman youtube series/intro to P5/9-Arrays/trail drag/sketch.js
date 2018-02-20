"use strict";
// bubble instance of the clace
let bubble = [];
let size = 10;
let bub;

// create a class 
class Bubble {
  constructor(x, y, r) {
    this.x = x;
    this.y = y;
    this.fillColor = "rgba(255, 165, 2, 0)";
    this.size = r;
  }

  display() {
    stroke("#e58e26");
    strokeWeight(4);
    fill(this.fillColor);
    ellipse(this.x, this.y, this.size, this.size);
  }

  move() {
    this.x += random(-5, 5);
    this.y += random(-5, 5);
  }

  containes(x, y) {
    let d = dist(x, y, this.x, this.y);
    if (d < this.size) {
      print("clicked");
      return true;
    } else {
      return false;
    }
  }

  colorCircle() {
    this.fillColor = "rgba(255, 165, 2, 0.2)";
  }

  restColor() {
    this.fillColor = "rgba(255, 165, 2, 0)";
  }

}

function setup() {
  createCanvas(600, 400);

}

function draw() {
  background("#0c2461");
  for (let i = 0; i < bubble.length; i++) {
    if (bubble[i].containes(mouseX, mouseY)) {
      bubble[i].colorCircle();
    } else {
      bubble[i].restColor();
    }
    bubble[i].move();
    bubble[i].display();
  }
  // remove when the size is greater than 10
  if (bubble.length > 10) {
    bubble.splice(0, 1);
  }
}


function mouseDragged() {
  // creaeting the bubble objects
  let r = random(10, 50);
  let newBubble = new Bubble(mouseX, mouseY, r);
  bubble.push(newBubble);

}