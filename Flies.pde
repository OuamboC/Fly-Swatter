class Flies
{
  int x;
  int y;
  int imgCounter; 
  int speedX=3;
  int speedY=2;

  PImage [] imgs = new PImage[16]; 

 Flies (int x, int y)
  {
    this.x =x;
    this.y =y;
  for (int i = 0; i < imgs.length; i++)
    {
      imgs[i] = loadImage ("fly" + (i+1) + ".png");
    }
  }

void update()
  {
    move();
    render();
  }
  void render()   
  {
    image( imgs[imgCounter/20 % imgs.length ], x, y);
    imgCounter++;
  }

  void move()
  {

    this.x = this.x - (int) random (2, 5);
    this.y = this.y -+ (int) random(2, 5);
    if (x < 0-imgs[0].width)
      x=width;
       if ( y<0-imgs[0].height)
      y=height;
      
   }

}
