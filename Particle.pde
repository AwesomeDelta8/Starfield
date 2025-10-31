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
