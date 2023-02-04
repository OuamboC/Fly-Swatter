class Cake
{
 int x;
  int y ;
  PImage cake = loadImage ("cake.png");
  
  Cake(int x, int y)
  {
    this.x=x;
    this.y=y;  
  }
  
  void render() 
  {
    imageMode(CENTER);
    image(cake, x, y);
    imageMode(CORNER);  
  }
  
  boolean collision(Flies Flies)
  {
    return abs (this.x-Flies.x) < 106 && abs (this.y-Flies.y) < 106;
  }
}
