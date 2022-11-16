//variable declarations
Star[] mySky = new Star[150];
Spaceship myShip = new Spaceship();

public void setup() 
{
  size(800,600);
  background(87, 8, 97);
  for (int i = 0; i < mySky.length; i++) {
     Star bob = new Star();
     bob.show();
  }
  
}
public void draw() 
{
  myShip.show();
}
