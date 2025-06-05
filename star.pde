class Star {
  //instance variables or fields
  float x, y, vx, vy, size;
  int h, s, b; //hue, saturation, colour

  //constructor: special function that defines how an object of this class is born.
  //             defines initial value for fields.

  Star() {
    x = random(0, width);
    y = random(0, height);
    //vx = 0;
    //vy = random(1, 5);
    
    vx = random(1, 5);
    vy = 0;
    size = vx;
    
    h = int(random(0, 255));
    s = 255;
    b = 255;
  }
  
  //behaviour functions: these define what a star does
  void show() {
   fill(h, s, b);
   square (x, y, size);
    
  }
  
  void act() {
    x = x + vx;
    if (x > height + size) {
      size = vx;
      x = -size;
    }
    size = size + 0.05;
  }
}
