class Ripple {
  //instance variables or fields
  float x, y, size, alpha;
  int h, s, b;

  //constructor
  Ripple() {
    x = random(width);
    y = random(height);
    size = random(200);

    h = int(random(0, 255));
    s = 255;
    b = 255;
  }

  //behaviour functions
  void show() {
    alpha = map(size, 0, 200, 255, 0); //fade in and out
    stroke(h, s, b, alpha); //stroke(255, alpha); for black/white
    ellipse(x, y, size, size/2);
  }

  void act() {
    size = size + 3;
    if (size >= 200) {
      x = random(width); //mouseX;
      y = random(height); //mouseY;
      size = random(200);
      //size = 0;
    }
  }
}
