var nums = [100,25, 46, 72];

function setup() {
  createCanvas(500,400);
}

function draw() {
  background(0);
  
  for(var i = 0; i < nums.length; i++) {
    ellipse(100 + (100 * i), 200, nums[i], nums[i]);
  }
  
}