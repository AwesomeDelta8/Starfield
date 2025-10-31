class oddBall extends Particle {
  oddBall() {
    setX(200);
    setY(200);
    setAngle(Math.random()*2*Math.PI);
    setSpeed(Math.random()*4);
    setSize(50);
  }
}
