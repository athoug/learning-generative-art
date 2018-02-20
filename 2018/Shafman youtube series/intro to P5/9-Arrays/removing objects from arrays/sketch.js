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
    print("dist is: " + d);
    print("r is: " + this.size);
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
  // creaeting the bubble objects
  for (let i = 0; i < size; i++) {
    let x = random(width);
    let y = random(height);
    let r = random(10, 100);
    let newBubble = new Bubble(x, y, r);
    bubble.push(newBubble);
  }

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
}

// remove when the mouse is clicking the bubble
function mousePressed() {
  for (let i = bubble.length-1; i >= 0; i--) {
    if (bubble[i].containes(mouseX, mouseY)) {
      bubble.splice(i, 1);
    }
  }
}