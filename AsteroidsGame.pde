//variable declarations
Star[] mySky = new Star[250];
Spaceship myShip = new Spaceship();
ArrayList <Asteroid> myAsteroid = new ArrayList <Asteroid>();
ArrayList <Bullet> myBullet = new ArrayList <Bullet>();
float bulletX, bulletY;
int healthCount = 100;
PImage trophy;

public void setup() 
{
  size(800,600);
  trophy = loadImage("trophy.png");
  for (int i = 0; i < mySky.length; i++) {
    mySky[i] = new Star();
  }
  for (int i = 0; i < 20; i++) {
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
      healthCount = healthCount - 10;
    }
  }
  myShip.show();
  myShip.move();
  for (int i = 0; i < myBullet.size(); i++) {
    myBullet.get(i).show();
    myBullet.get(i).move();
  }
  for(int i = 0; i < myBullet.size(); i++) {
    bulletX = (float)myBullet.get(i).getX();
    bulletY = (float)myBullet.get(i).getY();
    for(int j = 0; j < myAsteroid.size(); j++) {
      float shotDist = dist((float)myAsteroid.get(j).getX(), (float)myAsteroid.get(j).getY(), bulletX, bulletY);
      if (shotDist < 20) 
        myAsteroid.remove(j);
    }
  }
  fill(255);
  rect(675, 25, 100, 40);
  fill(0);
  textSize(16);
  text("Health: " + healthCount, 680, 50);
  if(healthCount <= 0) {
    background(0, 0, 0);
    textAlign(CENTER);
    fill(207, 27, 36);
    textSize(40);
    text("GAME OVER", 400, 300);
  }
  if(myAsteroid.size() == 0) {
    background(0, 0, 0);
    textAlign(CENTER);
    fill(247, 218, 0);
    textSize(40);
    text("VICTORY!", 400, 100);
    imageMode(CENTER);
    image(trophy, 400, 300);
  }
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
   if(key == ' ')
     myBullet.add(new Bullet(myShip));
}
