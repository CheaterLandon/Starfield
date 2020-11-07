Particle[] parts = new Particle[1000];
OddballParticle [] stars = new OddballParticle[1];

void setup()
{
  size(400, 600);
  for (int i = 0; i < parts.length; i++)
  parts [i] = new Particle();
  parts [0] = new OddballParticle();
}
void draw()
{
  //code
  background(0);
  for (int i = 0; i < parts.length; i++){
    parts[i].move();
    parts[i].show();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle ()
  {
    //code
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
    mySpeed =(Math.random()*5);
    myAngle = Math.random()*2*Math.PI;
    myX = 200;
    myY = 300;
  }
  void move ()
  {
    //code
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    //code
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, 5, 5);
  }
}

class OddballParticle extends Particle
{
  //code
   OddballParticle (){
    myColor = color(255);
    mySpeed = Math.random()*6;
    myAngle = Math.random()*2*Math.PI;
    myX = 200;
    myY = 300;
  }
  void move (){
    myX = myX + Math.cos(myAngle) / mySpeed;
    myY = myY + Math.sin(myAngle) / mySpeed;
  }
  void show (){
    fill(255);
    noStroke();
    ellipse((float)myX,(float)myY,25,25);
  }
}
