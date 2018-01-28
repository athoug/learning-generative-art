function setup() {
  // two ways to think of angles one in terms of dergees and the other radians
  var angle = degrees(PI/2);
  print(angle);
  var km = milesToKm(26.3);
  print("26.3 miles = " + km + " kilometers");
  
}

function draw() {
  
}
function milesToKm(miles) {
  return miles * 1.6;
}