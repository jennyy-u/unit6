class Kite {
  float kx, ky, kvx, kvy, ksize;

  //constructor
  Kite() {
    kx = random(0, width);
    ky = random(0, height);
    kvx = random(-1, -3);
    kvy = random(-1, -3);

    ksize = -kvy;
  }

  //behaviour functions
  void showKite() {
    stroke(255);
    triangle(kx, ky, kx, ky, kx, ky);
  }

  void actKite() {
    kx = kx + kvx;
    ky = ky + kvy;
  }
}
