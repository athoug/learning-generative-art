var increase = 10;

function setup() {
  createCanvas(500,300);
}

function draw() {
  if(increase<=750){
    line(10 + increase,0,0,10 + increase);
    increase+=10;
  } else {
    clear();
    increase = 10;
  }
}