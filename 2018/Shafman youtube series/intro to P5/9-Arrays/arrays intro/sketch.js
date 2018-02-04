var nums = [100, 25, 46, 72];
var num = 23;

function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(0);

  ellipse(100, 200, num, num);

  ellipse(200, 200, nums[2], nums[2]);
}