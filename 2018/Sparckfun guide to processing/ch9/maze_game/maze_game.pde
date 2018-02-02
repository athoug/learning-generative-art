float h, s, b; 
int x, y, middleX, middleY;
int size = 8;
PImage maze;

void setup() {
  maze = loadImage("maze.png");
  size(325, 325);
  colorMode(HSB);

  middleX = width/2;
  middleY = height/2;
  
  x = middleX;
  y = middleY;

  h = random(255);
  s = random(255);
  b = random(255);
}

void draw() {
  image(maze, 0, 0);
  // check wining condition 
  if ((x > 165) && (x < 180) && (y < 10)) {
    textSize(48);
    textAlign(CENTER);
    fill(h, s, b);
    text("YOU WIN!", middleX, middleY);
  }
  fill(h, s, b);
  noStroke();
  float touch = red(get(x, y)); // the get fucntion is used to check color collision
  ellipse(x, y, size, size);

  // if the color is not white, eturn to starting point
  if (touch < 240) {
    x = middleX;
    y = middleY;
  }

  println(mouseX, mouseY);
}

void keyPressed() {
  if ((key == CODED) && (keyCode == UP)) {
    y -= 5;
  }

  if ((key == CODED) && (keyCode == DOWN)) {
    y += 5;
  }

  if ((key == CODED) && (keyCode == LEFT)) {
    x -= 5;
  }

  if ((key == CODED) && (keyCode == RIGHT)) {
    x += 5;
  }
}