var textfield;
var output;
var submit;


function setup() {
  noCanvas();
  // textfield = createInput("your favorite food");
  textfield = select("#blueberry");
  // textfield.changed(newText);
  textfield.input(newTyping);
  output = select('#output');
  submit = select('#submit');
  submit.mousePressed(newText);
}

function newTyping(){
  output.html(textfield.value())
  //createP(textfield.value());
}

function newText() {
  createP(textfield.value());
  console.log(textfield.value());
}
