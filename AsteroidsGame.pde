//variable declarations
Star[] mySky = new Star[50];
Spaceship myShip = new Spaceship();

public void setup() 
{
  size(500,500);
  
}
public void draw() 
{
  background(87, 8, 97);
  for (int i = 0; i < mySky.length; i++) {
     Star bob = new Star();
     bob.show();
  }
  myShip.show();
  
}
