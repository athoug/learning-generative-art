var puppies = [];
var puppy = [];

function preload(){
  for(var i=0; i< 3; i++){
    puppy[i] = loadImage("images/puppy" +i + ".jpg"); 
  }
}

function setup() {
  createCanvas(600, 400);
}

function mousePressed(){
  var randomPuppy = floor(random(0, puppy.length));
  var b = new Puppy(mouseX, mouseY, puppy[randomPuppy]);
  puppies.push(b);
}

function draw() {
  background(0);
  for(var i= puppies.length-1; i >=0; i--){
    puppies[i].update();
    puppies[i].display();
  }
}