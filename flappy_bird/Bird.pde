class Bird {
  float x, y; // Fuglens position
  float dy, ddy; // Fuglens hastighed og acceleration
  float s; // Fuglens størrelse
  boolean ready2flap;
  int yellowbirds;


  int score;
PImage bird,downflap,upflap;


  // Constructor til nye fugle
  Bird() {
    bird = loadImage("yellowbird-midflap.png");
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

    image(bird, x, y);
    text(score, width/2, 50);
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
    if (ready2flap) {
      dy += -7;
      ready2flap = true;
      if(key == ' '){
        upflap = loadImage("yellowbird-upflap.png");
    }
  }
}
}
