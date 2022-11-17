//variable declarations
Star[] mySky = new Star[250];
Spaceship myShip = new Spaceship();

public void setup() 
{
  size(800,600);
  for (int i = 0; i < mySky.length; i++) {
    mySky[i] = new Star();
  }
}
public void draw() 
{
  background(0, 0, 0);
  for (int i = 0; i < mySky.length; i++) {
     mySky[i].show();
  }
  myShip.show();
  myShip.move();
}

public void keyPressed() {
   //accelerate
   if(key == 'w') 
     myShip.accelerate(0.4);
   //turn left
   if(key == 'a')
     myShip.turn(-10);
   //turn right
   if(key == 'd')
     myShip.turn(10);
   //hyperspace
   if(key == 's') 
     myShip.hyperspace();
}
