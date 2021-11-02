Star []bobs = new Star[100];
void setup()
{
  background(0, 0, 0);
  noStroke();
  size(1000, 500);
  for (int i = 0; i< bobs.length; i++) {
    bobs[i] = new Star();
    bobs[0]= new Particle();
  }
}
void draw()
{
  for (int i = 0; i< bobs.length; i++) {
    bobs[i].move();
    bobs[i].show();
  }
 
  fill(0, 0, 0, 10);
  rect(0, 0, 1000, 600);
}
class Particle extends Star 
{
  Particle() {
    myX = (int)(Math.random()*200)+1000;
    myY = (int)(Math.random()*500)+0;
    mySpeed = (int)(Math.random()*2)+1;
  }
  void show() {
   fill(252, 227, 3);
    ellipse(myX, myY, 20, 20);
  }
  void move() {
    if (mouseX>myX) {
      myX=myX+5;
    } else {
      myX-=5;
    }
    if (myY<0) {
      myY=0;
    }
    if (mouseY>myY) {
      myY=myY+4;
    } else {
      myY-=4;
    }
    if (myY<0) {
      myY=0;
    }
  }
}
class Star 
{
  int myX, myY, myWidth, myHeight, mySpeed, myColor, myOpacity;
  Star() {
    myX = (int)(Math.random()*255);
    myY = (int)(Math.random()*500);
    myWidth = 20;
    myHeight = 20;
    mySpeed = (int)(Math.random()*5)+2;
    myColor = (int)(Math.random()*20)+236;
    myOpacity = (int)(Math.random()*60)+60;
  }
  void show() {
    if((int)(Math.random()*200) == 1){
    fill(252, 227, 3);
    ellipse(myX, myY, myWidth, myHeight);
    }
    else{
      fill(3, 144, 252);
      ellipse(myX, myY, myWidth, myHeight);
    }
    
  }
  void move() {
    myX +=mySpeed; 
    if (myX>=1100) {
      myX = 0;
    }
    if(mousePressed == true){
      myX-=10;
      if(myX<-100){
        myX = 1000;
      }
    }
  }
}


