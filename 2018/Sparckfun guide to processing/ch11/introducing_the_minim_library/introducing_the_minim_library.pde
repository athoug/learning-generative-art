import ddf.minim.*; // import library

Minim minim; // minim library class object called minim
AudioPlayer song; // AudioPlayer object called song

void setup() {
  // instantiate the minim library class
  minim = new Minim(this); // initialize minim as a 
  // new Minum object
  // load the mp3 file to the song object 
  song = minim.loadFile("song.mp3");

  song.play();
}

void draw() {
  ; // nothing in the draw loop but it's there to play the song
}

// Website of the libarary: http://code.compartmental.net/minim/