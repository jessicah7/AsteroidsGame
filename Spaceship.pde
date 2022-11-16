class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 7; //modify
      myCenterX = 400;
      myCenterY = 300;
      myXspeed = myYspeed = myPointDirection = 0;
      myColor = color(132, 132, 130);
      //xCorners = new int[]{30, -20, -15, -10, -10, -15, -10, -1, -1, 9};
      //yCorners = new int[]{0, 8, 8, 3, -3, -8, -8, 12, -12, 0};
      xCorners = new int[]{30, -18, -30, -18, -18, -30, -18, -2, -2, 15};
      yCorners = new int[]{0, 15, 15, 7, -7, -15, -15, 20, -20, 0};
    }
    public void show() {
      fill(myColor);
      //ship body
      beginShape();
      for(int i = 0; i < corners; i++) {
        vertex((int)myCenterX + xCorners[i], (int)myCenterY + yCorners[i]);
      }
      endShape();
      
      //ship wings
      beginShape();
      for(int i = corners; i < xCorners.length; i++) {
        vertex((int)myCenterX + xCorners[i], (int)myCenterY + yCorners[i]);
      }
      endShape();
      
      
      
      translate((float)myCenterX, (float)myCenterY);
    }
    public void setXspeed(double x) {
      myXspeed = x;
    }
    public double getXspeed() {
      return myXspeed;
    }
}
