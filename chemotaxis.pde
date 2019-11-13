
Org[] bob;
Pred[] joe;
void setup() {
  size(1000, 1000);
  int a = 500;
  int b = 500;
  int R = 200;
  int G = 200;
  int B = 200;
  bob = new Org[50];
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Org (a, b, 3, R, G, B);
  }
}

void draw() {
  fill(255);
  rect(0, 0, 1000, 1000, 10);
  for (int i = 0; i < bob.length; i++) {
    bob[i].show();
    bob[i].change();
    bob[i].move();
  }
}
class Org
{
  int myX, myY, orgSpeed, R, G, B;
  Org(int x, int y, int speed, int R1, int G1, int B1)
  {
    myX = x;
    myY = y;
    orgSpeed = speed;
    R = R1;
    G = G1;
    B = B1;
  }

  void move() {

    int yAlt = (int) ((Math.random()*13) - 6);
    int xAlt = (int) ((Math.random()*13) - 6);
    if (myX - mouseX < 1){
      myX = myX + xAlt * - 1;
    }else{
      myX = myX + xAlt ;
    }
    if (myY - mouseY < 1){
      myY = myY + yAlt * - 1;
    }else{
      myY = myY + yAlt  ;
    }
    
  }                
  void change() {
    int sel = (int) (Math.random()*3);
    int alt = ((int)(Math.random()*3)-1)*15;
    if (sel == 0) {
      R = R + alt;
    } else if (sel == 1) {
      G = G + alt;
    } else {
      B = B + alt;
    }
    if (myX == mouseX && myY == mouseY){
      R = 0;
      G = 0;
      B = 0;
    }
  }
  void show() {
    fill(R, G, B);
    noStroke();
    ellipse(myX, myY, 10, 10);
  }
  
}
class Pred extends Org{
  Pred(int x, int y, int speed, int R1, int G1, int B1)
  {
    super(x,y,speed,R1,G1,B1);

  }
   void show(){
     

  
}
}
