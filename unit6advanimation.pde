import processing.javafx.*;

//jenny yu
//block 2-4
//june 4, 2025

//global variables
color sky = #84c8f8;

Bubble[] myBubbles;
int numBubbles;

Kite[] myKites;
int numKites;

void setup() {
  size(800, 800, FX2D);
  rectMode(CENTER);
  colorMode (HSB);
  //noStroke();
  noFill();


  numBubbles = 100;
  myBubbles = new Bubble[numBubbles];

  int b = 0;
  while (b < numBubbles) {
    myBubbles[b] = new Bubble();
    b++;
  }
  
  
  numKites = 5;
  myKites = new Kite[numKites];
  
  int k = 0;
  while (k < numKites) {
    //numKites[k] = new Kite();
    k++;
  }
  
  background(sky);
}



void draw() {
  background(sky);


  int ib = 0;
  while (ib < numBubbles) {
    myBubbles[ib].showBubble();
    myBubbles[ib].actBubble();
    ib++;
  }
  
  int ik = 0;
  while (ik < numKites) {
    //myKites[ik].showKite();
    //myKites[ik].actKite();
    ik++;
  }
  
}
