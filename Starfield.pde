Particle[] parts = new Particle[1500];
void setup() {
  size(800, 800);
  background(0);
  for (int i = 0; i<parts.length; i++) {
    parts[i] = new Particle();
  }
  for (int i = 750; i<parts.length; i++) {
    parts[i] = new oddBall2();
  }
  for (int i = 1499; i<parts.length; i++) {
    parts[i] = new oddBall();
  }
}

void draw() {
  background(0);
  for (int i = 0; i<parts.length; i++) {
    parts[i].move();
    if ((int)(Math.random()*2) == 1) {
      fill(0);
    } else {
      fill(255, 255, 255);
    }

    ellipse ((float)parts[i].getX(), (float)parts[i].getY(), parts[i].getSize(), parts[i].getSize());
  }
  if (parts[1499].getX() > 800 || parts[1499].getX() < 0) {
    for (int i = 0; i<parts.length; i++) {
      parts[i].setX(400);
      parts[i].setY(400);
    }
  }
  if (parts[1499].getY() > 800 || parts[1499].getY() < 0) {
    for (int i = 0; i<parts.length; i++) {
      parts[i].setY(400);
      parts[i].setX(400);
    }
  }
}
