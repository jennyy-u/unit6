import processing.javafx.*;

//jenny yu
//block 2-4
//june 4, 2025

Bubble[] myBubbles;
int numbubbles;

void setup() {
  size(800, 800, FX2D);
  rectMode(CENTER);
  colorMode (HSB);
  noStroke();


  numbubbles = 100;
  myBubbles = new Bubble[numbubbles];

  int i = 0;
  while (i < numbubbles) {
    myBubbles[i] = new Bubble();
    i++;
  }
  background(0);
}



void draw() {
  fill(0, 10);
  rect(width/2, height/2, width, height);

  int i = 0;
  while (i < numbubbles) {
    myBubbles[i].show();
    myBubbles[i].act();
    i++;
  }
}
