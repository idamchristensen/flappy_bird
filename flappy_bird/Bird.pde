class Bird {
  float x, y; // Fuglens position
  float dy, ddy; // Fuglens hastighed og acceleration
  float s; // Fuglens størrelse
  boolean ready2flap;

  // Constructor til nye fugle
  Bird() {
    x = width/2;
    y = height/2;
    dy = 0;
    ddy = 0.3;
    s = 50;
    ready2flap = true;
  }

  // Afbild fuglen ved dens nuværende position
  void render() {
    fill(255);
    ellipse(x, y, s, s);
  }

  // Opdater fuglens position
  void update() {
    dy += ddy;
    y += dy;
    
    if (y >= height-s/2) {
      y = height - s/2;
      dy = 0;
    }
  }

  // Bask med vingerne
  void flap() {
    if(ready2flap) {
      dy += -7;
      ready2flap = false;
    }
  }
}
