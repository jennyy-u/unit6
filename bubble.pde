class Bubble {
  //instance variables or fields
  float x, y, vx, vy, size;

  //constructor
  Bubble() {
    x = random(0, width);
    y = random(0, height);
    vx = 0;
    vy = random(-1, -7);

    size = -vy;
  }

  //behaviour functions: these define what a star does
  void show() {
    stroke(255);
    circle(x, y, size);
  }

  void act() {
    y = y + vy;
    if (y > height + size) {
      size = -vy;
      y = -size;
    }
    size = size + 0.05;
  }
}
