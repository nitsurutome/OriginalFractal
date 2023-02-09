public void setup()
{
  size(500,500);
  rectMode(CENTER);
}

public void draw()
{
  background(255);
  myFractal(250,250,250);
}

public void myFractal(int x, int y, int siz)
{
  //must do siz not size cause of weird github stuff
  ellipse(x, y, siz, siz);

  if(siz >= 10)
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
