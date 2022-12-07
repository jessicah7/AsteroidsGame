class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPoint();
    accelerate(2);
  }
  public void show() {
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public double getY(){
     return myCenterY;
  }
  public double getX(){
    return myCenterX;
  }
}
