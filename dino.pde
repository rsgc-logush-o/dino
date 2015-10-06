//int cactX = 800;
int cactY;

int cactX[];

int cactSpeed[];

int dinoY = 175;

boolean gameOver = false;

int score = 0;

boolean cact[];




void setup()
{
  size(800, 200);
  
  cactSpeed = new int[3];
  
  cactX = new int[3];
  
  cact = new boolean[3];
  
  for(int i = 0; i < 3; i++)
  {
    
    println(i);
   cact[i] = false; 
  }
}


void draw()
{
  
  background(255);
  
// println(rand(.1));
  
  if(gameOver == false)
  {
    
    if(rand(.09) == true)
    {
   cactus();
    }
    
  fill(0);
  
  textSize(12);
  
  text("Score: " + score, 20, 20);
  
   fill(255,0,0);
  
  ellipse(50, dinoY, 20, 20);
  
 
  
  for(int i = 0; i < 3; i++)
  {
     if(cactX[i] < 70 && cactX[i] > 30 && dinoY > 155)
  {
    gameOver=true;
  }else if(cactX[i] < 30 && cact[i] == true)
  {
   score++;
   
   cact[i] = false;
  }
    
   fill(0);
   if(cact[i] == true)
   {
   cactX[i] -=cactSpeed[i];
     
     
   ellipse(cactX[i], 175, 20, 20);
   }
  }
  
  
  
  
 
  
  }else if(gameOver == true)
  {
   fill(0);
   
   textSize(45);
   text("Game Over!", 278, 112);
  }
  
 
  
}


void keyPressed()
{
 if(key == ' ') 
 {
  thread("jump");
 }
}

void jump()
{
  for(int i = 0; i >= -50; i--)
  {
    
  dinoY = i+175;
  delay(3);
  }
  
  //delay(200);
  
  for (int i = 0; i <= 50; i++)
  {
   dinoY = i+125; 
   
   delay(3);
  }
}


boolean rand(float probability)
{
 if(random(0, 1) < probability)
 {
  return true;
 }else{
  return false; 
 }
}

void cactus()
{
  for(int i = 0; i < 3; i++)
  {
    if(cact[i] == false)
    {
   cact[i] = rand(.1);
   
   
  if(cact[i] == true){
    cactX[i] = 800;
    
    cactSpeed[i] = int(random(2, 7));
  }
    }
    
   
  }
 
 
}