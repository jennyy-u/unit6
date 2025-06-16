class Kite {
  float kx, ky, kvx, kvy, minkvx, maxkvx, minkvy, maxkvy, ksize;

  //constructor
  Kite() {
    kx = random(0, width);
    ky = random(0, height);
    kvx = random(-1, -3);
    kvy = 2;

    ksize = -kvy;
  }

  //behaviour functions
  void showKite() {
    stroke(255);
    triangle(kx, ky, kx+50, ky+20, kx+40, ky-20);
    triangle(kx, ky, kx+50, ky+20, kx+5, ky+60);
    line(kx+40, ky-20, kx+5, ky+60);
  }

  void actKite() {
    ky = ky + kvy;
    if (ky > maxkvy || ky < minkvy) {
      kvy = kvy * -1;
    }
    kx = kx + kvx;
    if (kx > maxkvx || kx < minkvx) {
      kvx = kvx * -1;
    }
  }
}
