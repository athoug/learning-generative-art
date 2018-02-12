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

  clicked() {
    let d = dist(mouseX, mouseY, this.x, this.y);
    print("dist is: " + d);
    print("r is: " + this.size);
    if (d < this.size) {
      print("clicked");
      this.colorCircle();
    }
  }

  colorCircle() {
    this.fillColor = "rgba(255, 165, 2, 0.2)";
  }

}

function setup() {
  createCanvas(600, 400);
  for (let i = 0; i < size; i++) {
    let x = random(width);
    let y = random(height);
    let r = random(10, 100);
    let newBubble = new Bubble(x, y, r);
    bubble.push(newBubble);
  }

  // testing 
  // bub = new Bubble(100, 100, 100);
  // print(bub);
}

function draw() {
  background("#0c2461");
  for (let i = 0; i < bubble.length; i++) {
    bubble[i].move();
    bubble[i].display();
  }
  // bub.display();
}

function mousePressed() {
  // creating bubbles on click
  // let r = random(10, 100);
  // let newBubble = new Bubble(mouseX, mouseY, r);
  // bubble.push(newBubble);

  for (let i = 0; i < bubble.length; i++) {
    bubble[i].clicked();
  }
  
  // testing
  // bub.clicked();
}