class Bubble {
  //instance variables or fields
  float bx, by, bvx, bvy, bsize;

  //constructor
  Bubble() {
    bx = random(0, width);
    by = random(0, height);
    bvx = 0;
    bvy = random(-1, -7);

    bsize = -bvy;
  }

  //behaviour functions: these define what a star does
  void showBubble() {
    stroke(255);
    circle(bx, by, bsize);
  }

  void actBubble() {
    by = by + bvy;
    if (by > height + bsize) {
      bsize = -bvy;
      by = -bsize;
    }
    bsize = bsize + 0.05;
  }
}
