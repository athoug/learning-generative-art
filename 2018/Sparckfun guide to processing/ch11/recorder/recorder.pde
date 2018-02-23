import ddf.minim.*;

Minim minim;

AudioInput mic; // for microphone input
AudioRecorder left; // left recorder
AudioRecorder right; // right recorder
AudioSample Pright; // right playback
AudioSample Pleft; // left playback

void setup() {
  size(800,900);
  
  minim = new Minim(this);
  mic = minim.getLineIn();
  
  right = minim.createRecorder(mic, "data/right.wav");
  left = minim.createRecorder(mic, "data/left.wav");
}

void draw() {
  ; // nothing here!
}

void keyPressed() {
  // record and stop/save controls for the left sample
  if(keyCode == LEFT) {
    if(left.isRecording()) {
      left.endRecord();
      left.save();
    } else {
      left.beginRecord();
    }
  }
  
  // record and stop/save controls for the right sample
  if(keyCode == RIGHT) {
    if(right.isRecording()) {
      right.endRecord();
      right.save();
    } else {
      right.beginRecord();
    }
  }
  
  // play the right sample
  if(keyCode == UP) {
    Pright = minim.loadSample("right.wav");
    Pright.trigger();
  }
  
  // play the left sample
  if(keyCode == DOWN) {
    Pleft = minim.loadSample("left.wav");
    Pleft.trigger();
  }
}