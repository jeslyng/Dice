int sum = 0;
void setup()
{
  noLoop();
  size(550, 600);
  background(149, 235, 52);
}
void draw()
{
  background(149, 235, 52);
  sum = 0;
  rollDice(550, 500, 30);
}

void mousePressed()
{
  redraw();
}

void rollDice(int xEdge, int yEdge, float diceSize) {
  strokeWeight(5);
  //strokeWeight(diceSize/6); //processing only not github
  for (int i = 5; i< xEdge; i+=diceSize+20) {
    for (int j = 5; j < yEdge; j+=diceSize+20) {
      Die urmom = new Die(i, j, diceSize);
      urmom.roll();
      urmom.show();
      sum = sum + urmom.num;
    }
  }
  text("Your roll: " + sum, 230, 550);
}  

class Die 
{
  int myX, myY, num;
  float mySize;

  Die(int x, int y, float size)
  {   
    myX = x;
    myY = y;
    num = 0;
    mySize = size;
  }
  void roll()
  {
    num = (int) (Math.random() * 6);
  }
  void show()
  {
    square(myX, myY, mySize);
    if (num==0) {
      point(myX + 15, myY + 15);
    } else if (num ==1) {
      point(myX + 6, myY + 6);
      point(myX + 4*6, myY + 4*6);
    } else if (num ==2) {
      point(myX + 6, myY + 6);
      point(myX + 4*6, myY + 4*6);
      point(myX + 15, myY + 15);
    } else if (num == 3) {
      point(myX + 6, myY + 6);
      point(myX + 4*6, myY + 4*6);
      point(myX + 6, myY + 4*6);
      point(myX + 4*6, myY + 6);
    } else if (num == 4) {
      point(myX + 6, myY + 6);
      point(myX + 4*6, myY + 4*6);
      point(myX + 6, myY + 4*6);
      point(myX + 4*6, myY + 6);
      point(myX + 15, myY + 15);
    } else {
      point(myX + 6, myY + 6);
      point(myX + 4*6, myY + 4*6);
      point(myX + 6, myY + 4*6);
      point(myX + 4*6, myY + 6);
      point(myX + 6, myY + 15);
      point(myX + 4*6, myY + 15);
      /*if (num==0) { //for processing only not github
      point(myX + mySize/2, myY + mySize/2);
    } else if (num ==1) {
      point(myX + mySize/5, myY + mySize/5);
      point(myX + 4*mySize/5, myY + 4*mySize/5);
    } else if (num ==2) {
      point(myX + mySize/5, myY + mySize/5);
      point(myX + 4*mySize/5, myY + 4*mySize/5);
      point(myX + mySize/2, myY + mySize/2);
    } else if (num == 3) {
      point(myX + mySize/5, myY + mySize/5);
      point(myX + 4*mySize/5, myY + 4*mySize/5);
      point(myX + mySize/5, myY + 4*mySize/5);
      point(myX + 4*mySize/5, myY + mySize/5);
    } else if (num == 4) {
      point(myX + mySize/5, myY + mySize/5);
      point(myX + 4*mySize/5, myY + 4*mySize/5);
      point(myX + mySize/5, myY + 4*mySize/5);
      point(myX + 4*mySize/5, myY + mySize/5);
      point(myX + mySize/2, myY + mySize/2);
    } else {
      point(myX + mySize/5, myY + mySize/5);
      point(myX + 4*mySize/5, myY + 4*mySize/5);
      point(myX + mySize/5, myY + 4*mySize/5);
      point(myX + 4*mySize/5, myY + mySize/5);
      point(myX + mySize/5, myY + mySize/2);
      point(myX + 4*mySize/5, myY + mySize/2);
      */
    }
  }
}
