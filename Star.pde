class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star() {
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*600);
  }
  public void show() {
    noStroke();
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    ellipse(myX, myY, 5, 5);
  }
}
