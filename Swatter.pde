class Swatter
{
  
  int x ;
  int y ;
  int speed=5;
  PImage swatter = loadImage ("swatter.png");
  
  Swatter(int x, int y)
  {
    this.x=x;
    this.y=y;
  }
  
  void render()
  {
    image(swatter, mouseX, mouseY);
  }
  
  boolean kill(Flies Flies)
  {   
    return abs (mouseX-Flies.x) < swatter.width && abs (mouseY-Flies.y) < swatter.height ;
  }
}


void mouseClicked ()
{
  for ( int i=0; i<FliesList.size(); i++)
  {
    Flies currentFlies =  FliesList.get (i);
    currentFlies.update();
    if ( swat.kill(currentFlies) && mouseButton == LEFT)
    {
      points = points + 100;
      FliesList.remove (currentFlies );
      println ("Kill");
    }
  }
}
