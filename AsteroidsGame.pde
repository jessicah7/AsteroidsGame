//variable declarations
Star[] mySky = new Star[250];
Spaceship myShip = new Spaceship();
ArrayList <Asteroid> myAsteroid = new ArrayList <Asteroid>();

public void setup() 
{
  size(800,600);
  for (int i = 0; i < mySky.length; i++) {
    mySky[i] = new Star();
  }
  for (int i = 0; i < 15; i++) {
    myAsteroid.add(new Asteroid());
  }
}
public void draw() 
{
  background(0, 0, 0);
  for (int i = 0; i < mySky.length; i++) {
    mySky[i].show();
  }
  for (int i = 0; i < myAsteroid.size(); i++) {
    myAsteroid.get(i).show();
    myAsteroid.get(i).move();
    float myDist = dist((float)myAsteroid.get(i).getX(), (float)myAsteroid.get(i).getY(), (float)myShip.getX(), (float)myShip.getY());
    if (myDist < 30) {
      myAsteroid.remove(i);
    }
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
