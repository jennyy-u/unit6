import processing.javafx.*;

//jenny yu
//block 2-4
//june 5, 2025

Ripple[] myRipples;
int numripples;

void setup() {
  size(800, 800, FX2D);
  colorMode (HSB);
  noFill(); //ripples are hollow


  numripples = 50;
  myRipples = new Ripple[numripples];

  int i = 0;
  while (i < numripples) {
    myRipples[i] = new Ripple();
    i++;
  }
  
  stroke(255);
  strokeWeight(1);
}



void draw() {
  background(0);
  //fill(0, 10);
  //rect(width/2, height/2, width, height);

  int i = 0;
  while (i < numripples) {
    myRipples[i].show();
    myRipples[i].act();
    i++;
  }
}
