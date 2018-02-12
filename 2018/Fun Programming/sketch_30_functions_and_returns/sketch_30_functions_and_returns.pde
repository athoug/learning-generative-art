// does not return any value | does not take any perameters
void hello() {
  println("Hello!");
}

// float is a number with decimals and 
// int is a number withou decimals
void print_sum(float a, float b) {
  println(a+b);
}

// returns a value of float | takes two float perameters
float calculate_sum(float a, float b) {
  float c = a + b;
  return c;
}

void setup() {
  hello();
  print_sum(3.5, 3.5);
  
  float my_Added_Numbers = calculate_sum(100,50);
  println(my_Added_Numbers);
}