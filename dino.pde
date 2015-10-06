int cactX;
int cactY;

int dinoY = 175;

boolean gameOver = false;


void setup()
{
  size(800, 200);
}


void draw()
{
  
  background(255);
  
  fill(255,0,0);
  
  if(gameOver == false)
  {
  
  ellipse(50, dinoY, 20, 20);
  
  if(cactX < 0)
  {
   cactX = 800; 
  }
  
  fill(0);
  
  ellipse(cactX, 175, 20, 20);
  
  cactX-=5;
  
  }else if(gameOver == true)
  {
   fill(0);
   
   textSize(45);
   text("Game Over!", 278, 112);
  }
  
  if(cactX == 50 && dinoY == 175)
  {
    gameOver=true;
  }
  
}


void keyPressed()
{
 if(key == ' ') 
 {
   dinoY-=30;
 }
}

void keyReleased()
{
 dinoY+=30; 
}