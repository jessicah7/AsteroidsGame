class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 20; 
      myCenterX = 400;
      myCenterY = 300;
      myXspeed = myYspeed = myPointDirection = 0;
      myColor = color(186, 185, 185);
      //5 2 0 -1 0 0 -3 -4 -3 -3 -2 -3 -3 -4 -3 0 0 -1 0 2
      xCorners = new int[]{30, 12, 0, -6, 0, 0, -18, -24, -18, -18, -12, -18, -18, -24, -18, 0, 0, -6, 0, 12};
      //0 1 5 4 4 2 4 3 3 1 0 -1 -3 -3 -4 -2 -4 -4 -5 -4
      yCorners = new int[]{0, 6, 30, 24, 24, 12, 24, 18, 18, 6, 0, -6, -18, -18, -24, -12, -24, -24, -30, -6};
    }
    
    public void hyperspace() {
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = Math.random()*800;
      myCenterY = Math.random()*600;
      myPointDirection = Math.random()*360+1;
    }
    public double getPoint() {
      return myPointDirection;
    }
    public double getY(){
      return myCenterY;
    }
    public double getX(){
      return myCenterX;
    }
    public double getXspeed(){
      return myXspeed;
    }
    public double getYspeed(){
      return myYspeed;
    }
}
