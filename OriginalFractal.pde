float big;
public void setup()
{
  size(500, 500);
  rectMode(CENTER);
  background(255);
  fill(0);
  textSize(50);
  text("hold down left click", 0, 250);
  frameRate(15);
}

public void draw()
{
  myFractal(250, 250, (int)big);
  if (mousePressed)
  {
    fill(255);
    big = big + 100;
  }
}

public void myFractal(int x, int y, int siz)
{
  //must do siz not size cause of weird github stuff
  rect(x/2, y, siz, siz);

  if (siz >= 10)
  {
    fill(0, 100, 255, siz);
    myFractal(x-siz/4, y-siz/2, siz/2);
    fill(0, 100, 255, siz);
    myFractal(x+siz/4, y+siz/2, siz/2);
    fill(255, 100, 0, siz);
    myFractal(x-siz/4, y+siz/2, siz/2);
    fill(255, 100, 0, siz);
    myFractal(x+siz/4, y-siz/2, siz/2);
  }
}
