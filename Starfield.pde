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







class Particle {
  private double myX, myY, myAngle, mySpeed;
  private int mySize;
  public Particle() {
    myX = 400;
    myY = 400;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    mySize = 10;
  }
  public void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  public double getX() {
    return (float)myX;
  }
  public void setX(double x) {
    myX = x;
  }
  public double getY() {
    return (float) myY;
  }
  public void setY(double y) {
    myY = y;
  }
  public int getSize() {
    return mySize;
  }
  public void setAngle(double angle) {
    myAngle = angle;
  }
  public void setSpeed(double speed) {
    mySpeed = speed;
  }
  public void setSize(int size) {
    mySize = size;
  }
}






class oddBall extends Particle {
  oddBall() {
    setX(200);
    setY(200);
    setAngle(Math.random()*2*Math.PI);
    setSpeed(Math.random()*4);
    setSize(50);
  }
}







  class oddBall2 extends Particle{
  oddBall2(){
    setX(200);
    setY(300);
    setAngle(Math.random()*2*Math.PI);
    setSpeed((int)(Math.random()*5));
    setSize(6);
  }
  }


