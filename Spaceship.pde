class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 5; 
      myCenterX = 400;
      myCenterY = 300;
      myXspeed = myYspeed = myPointDirection = 0;
      myColor = color(186, 185, 185);
      xCorners = new int[]{30, 0, -20, -20, 0};
      yCorners = new int[]{0, 15, 10, -10, -15};
    }
    
    public void hyperspace() {
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = Math.random()*800;
      myCenterY = Math.random()*600;
      myPointDirection = Math.random()*1+1;
    }
    public void setY(int y){
      myCenterY = myCenterY + y;
    }
    public void setX(int x){
      myCenterX = myCenterX + x;
    }
    public double getY(){
      return myCenterY;
    }
    public double getX(){
      return myCenterX;
    }
}
