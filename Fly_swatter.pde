Cake cake;
Swatter swat;
PImage grass;
int grassX =0 ;
final int PLAYING = 0;
final int FINISHED =1;
int gameMode = PLAYING;
int points = 0;

String s = "GameOver." ;
String S = " Score : " ;

ArrayList<Flies> FliesList = new ArrayList <Flies>();
void setup()
{
  size(1000, 1000);
  noCursor();
  grass = loadImage ("grassbackground.png");
  grass.resize(width, height);

  swat = new Swatter (mouseX, mouseY);


  for (int i = 0; i<30; i++)
  {
    FliesList.add( new Flies ( (int)random(1000, 1200), (int) random (0, height-200) ) );
  }

  cake = new Cake (width/2, height/2);
}

void draw()
{


  if (gameMode == PLAYING)
  {
    drawgrassbackground();
    mouseClicked();
    swat.render();
    cake.render();
    for ( Flies aFlies : FliesList)
    {
      aFlies.update();
      if ( cake.collision(aFlies) )
      {
        gameMode = FINISHED;
        GameOver();
        Score();
        println ("FLIES TRY TO EAT THE CAKE !! ");
      }
    }
  }
}
void drawgrassbackground()
{
  image(grass, grassX, 0);
}
void GameOver()
{
  background (0);
  textSize (100);

  PFont f = createFont ("Georgia", 60);
  textFont (f);

  textAlign (CENTER);
  text ( s, width/2, height/2);
}
void Score ()
{
  textSize ( 100);
  fill (255, 0, 0);
  PFont f = createFont ("Georgia", 90);
  textFont (f);

  textAlign (CORNER);
  text (S + points, 300, 300) ;
}
