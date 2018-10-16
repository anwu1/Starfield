Particle[] particles;
void setup()
{
  size(500, 500);
  particles= new Particle[100];
  for (int i=0; i <100; i ++) {
    particles[i]=new NormalParticle();
    
   
  }
   particles[1] =new OddballParticle();
    particles[2]=new JumboParticle();
}
void draw()
{
    background(0);
  for (int i=0; i <100; i ++) {
    
    particles[i].show();
    particles[i].move();
   
  }
}

interface Particle
{
  public void show();
  public void move();
}

void mousePressed() {
    for (int i =0; i<particles.length; i++) {
    particles[i]=new NormalParticle();
  }
     particles[1] =new OddballParticle();
    particles[2]=new JumboParticle();
}   

class NormalParticle implements Particle
{
  double myX, myY, myAngle;
  int mySpeed;


  NormalParticle()
  {
    myX=250;
    myY=250;
    mySpeed=(int)(Math.random()*11);
    myAngle= Math.PI*2*Math.random();
  }
  public void move() {
    
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY + Math.sin(myAngle)*mySpeed;
  }
  public void show() {
    fill ((float)Math.random()*255, (float)Math.random()*255, 0);
    ellipse ((float)myX, (float)myY, 10, 10);
  }
}
class OddballParticle implements Particle
{
  double myX, myY, myAngle;
  int mySpeed;
  
  OddballParticle(){
   
     myX=0;
    myY=0;
    
  }
  public void show() {
   fill ((float)Math.random()*255, 0, (float)Math.random()*255);
  rect((float)myX,(float) myY, 30,30);
  }
  public void move(){
    myX=myX+5;
    myY=myY + 5;
  }
    
  
}
class JumboParticle extends NormalParticle
{
  JumboParticle(){
    myX=250;
    myY=250;
    mySpeed=(int)(Math.random()*11);
    myAngle= Math.PI*2*Math.random();
  }
  public void show() {
    fill (0, (float)Math.random()*255, (float)Math.random()*255);
    ellipse ( (float)myX, (float)myY, 50, 50);
  }
  public void move() {
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY + Math.sin(myAngle)*mySpeed;
  }
}
