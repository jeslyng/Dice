int sum = 0;
void setup()
{
     noLoop();
     size(500,550);
     
}
void draw()
{
  background(149, 235, 52);
  strokeWeight(3);
  sum = 0;
  for (int i = 5; i< 500; i+=50){
    for (int j = 5; j < 500; j+=50){
      Die urmom = new Die(i,j);
      urmom.roll();
      urmom.show();
      sum = sum + urmom.num;
    }
  }
  text("Your roll: " + sum, 200, 525);
}
  void mousePressed()
  {
      redraw();
  }

class Die //models one single dice cube
{
  int myX, myY, num, size;
  
  Die(int x, int y)
  {   
    myX = x;
    myY = y;
    num = 0;
    size = 30;
  }
  void roll()
  {
    num = (int) (Math.random() * 6);
  }
  void show()
  {
    square(myX,myY,size);
    if (num==0){
      point(myX + size/2, myY + size/2);
    } else if (num ==1){
      point(myX + size/5, myY + size/5);
      point(myX + 4*size/5, myY + 4*size/5);
    } else if (num ==2){
      point(myX + size/5, myY + size/5);
      point(myX + 4*size/5, myY + 4*size/5);
      point(myX + size/2, myY + size/2);
    } else if (num == 3){
      point(myX + size/5, myY + size/5);
      point(myX + 4*size/5, myY + 4*size/5);
      point(myX + size/5, myY + 4*size/5);
      point(myX + 4*size/5, myY + size/5);
    } else if (num == 4){
      point(myX + size/5, myY + size/5);
      point(myX + 4*size/5, myY + 4*size/5);
      point(myX + size/5, myY + 4*size/5);
      point(myX + 4*size/5, myY + size/5);
      point(myX + size/2, myY + size/2);
    } else {
      point(myX + size/5, myY + size/5);
      point(myX + 4*size/5, myY + 4*size/5);
      point(myX + size/5, myY + 4*size/5);
      point(myX + 4*size/5, myY + size/5);
      point(myX + size/5, myY + size/2);
      point(myX + 4*size/5, myY + size/2);
    }
  }
}
