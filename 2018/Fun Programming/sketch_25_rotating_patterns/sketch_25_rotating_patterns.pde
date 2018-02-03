size(400, 300);
background(#6c5ce7);
noStroke();
smooth(); // smoothes lines in roatation

float c = 0;

while (c < 100) {
  rotate(0.05); // roation function is cumalative meaning it ads on its previous value
  
  if (c%2 == 0) {
    fill(#fd79a8);
  } else {
    fill(#a29bfe);
  }
  rect(200, 0, 50, 5);
  
  fill(#74b9ff);
  rect(260, 0, 5, 5);
  c += 1;
}