var textfield;
var output;
var laugh;


function setup() {
  noCanvas();
  textfield = createInput().size(500);

  textfield.input(changeMe);
  output = select("#output");
  laugh = select("#Laugh");
}

function changeMe()
{
  var start = "Muahahahha don't you know I'm a reverse stringer:";
  var newPhrase = reverseString(textfield.value());
  // laugh.html(start);
  output.html(start+"\n"+newPhrase);

}

function reverseString(str){
  // 1. use the split method to return a new array
  var splitString = str.split("");
  // 2. use the reverse method of the array to reverse the charachters
  var reversedArray = splitString.reverse();
  // 3. use the join() method to bring things togther
  var joinedArray = reversedArray.join("");
  // We can join them all togther at once
  // return str.split("").reverse().join("");

  return joinedArray;
}
