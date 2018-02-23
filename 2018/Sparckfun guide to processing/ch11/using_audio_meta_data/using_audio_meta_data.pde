import ddf.minim.*;

Minim minim;
AudioPlayer song;
AudioMetaData data;

float pos;

void setup() {
  size(500, 200);

  minim = new Minim(this); // create the minim object
  song = minim.loadFile("song.mp3"); // load the song
  data = song.getMetaData(); // get meta data from the song object 

  song.play(); // play te song
}
void draw() {
  background(#303952);
  noStroke();

  // map positon to 0-300
  pos = map(song.position(), 0, song.length(), 0, 300);

  // meta data displayed 
  textAlign(CENTER); // align text to the center
  fill(#596275);
  text(data.title(), width/2, 55); // song title
  text(data.author(), width/2, 70); // artist
  text(data.album(), width/2, 85); // album

  // position
  text(song.position()/1000 + " out of " + song.length()/1000, width/2, 100);

  fill(#ea8685, 120);
  rect(100, 110, 300, 50); // base rectangle
  fill(#e66767);
  rect(100, 110, pos, 50);
}

void keyPressed() {
  if (key == 's') {
    song.pause(); // if 'S' is pressed, pause the song
  }
  if (key == 'p') {
    song.play(); // if 'P' is pressed, play the song
  }
}