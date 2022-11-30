class Asteroid extends Floater {
  private double rotSpeed = Math.random()*2 - 1;
  public Asteroid() {
    corners = 6;
    myColor = color(144, 144, 144);
    myXspeed = myYspeed = (int)(Math.random()*5 - 3);
    if (myXspeed == 0) {
      myXspeed = 2;
    }
    xCorners = new int[] {-11, 7, 13, 6, -11, -5};
    yCorners = new int[] {-8, -8, 0, 10, 8, 0};
    myCenterX = Math.random()*800;
    myCenterY = Math.random()*600;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
}
