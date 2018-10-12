//your code here
void setup()
{
  double myX, myY=50;
  NormalParticle[] particles= new Particle[100];
}
void draw()
{
  for (i=0; i <100; i ++){
    NormalParticle[i].move();
    NormalParticle[i].show();
    OddballParticle();
  }
}
class NormalParticle
{
  double myX, myY, myAngle;
  int mySpeed;
  float myAngle;

  NormalParticle(int X, int Y) {
    color(0,250,160);
    myX=X;
    myY=Y;
  }
  void move() {
    mySpeed=(int)(Math.random()*11);
    myAngle= Math.PI*2*Math.random();
    X=Math.cos(myAngle)*mySpeed;
    Y=Math.sin(myAngle  )*8.25;
  }
  void show() {
    ellipse ((float)myX, (float)myY, 30, 30);
  }
}
interface Particle
{
  public void show();
  public void move();

}
class OddballParticle //uses an interface
{
  void show(){
    rect oddball= new rect(x, y, 
  }
}
class JumboParticle //uses inheritance
{
  //your code here
}
