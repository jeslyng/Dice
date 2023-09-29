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

void rollDice(int xEdge, int yEdge, int diceSize) {
  strokeWeight(diceSize/6);
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
  int myX, myY, num, mySize;

  Die(int x, int y, int size)
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
    }
  }
}
