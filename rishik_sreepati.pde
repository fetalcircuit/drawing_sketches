int xPos;                                                                                                       //Determines the position of the ball
int speed=1;                                                                                                    //Determines the speed of the ball
int xDir=1;                                                                                                     //Determines the direction of the ball
int score=0;                                                                                                    //Inital score
int lives=5;                                                                                                    //Number of lives you start with      
boolean lost=false;                                                                                             //Determines if you lost the game

void setup()                                                                                                    //Runs once when program launches
{
  size(700,400);
  smooth();
  xPos=width/2;                                                                                                 //Centers the ball
  fill(255);                                                                                                    //Makes the ball and text white
  textSize(20);                                                                                                 //Sets the size of the text
}

void draw()                                                                                                     //Loops over and over again
{
  background(51);                                                                                               //Equips gray background
  ellipse(xPos,height/2,40,40);                                                                                 //Draws the ball
  xPos=xPos+(speed*xDir);                                                                                       //Updates the ball's position 
  if(xPos > width-20 || xPos<20)                                                                                //Determines if the ball hit the side.
  {
    xDir=-xDir;                                                                                                 //If it did, reverse the direction
  }
  text("Score - "+score,10,30);                                                                                 //Prints the score on the screen
  text("Lives - "+lives,width-95,30);                                                                           //Prints the remaining lives
  if(lives<=0)                                                                                                  //Determines if you lost
  {
    textSize(40);
    text("Game Over",247,70);
    textSize(20);
    text("Click anywhere to Restart",230,100);
    noLoop();                                                                                                   //Stops looping at the end of the draw function
    lost=true;
    textSize(20);
  }
}

void mousePressed()                                                                                             //Runs whenever the mouse is pressed
{
  if(dist(mouseX, mouseY, xPos, 200)<=20)                                                                       //Determines if the target was hit
  {
    score=score+speed;                                                                                          //Increases the Speed
    speed=speed+1;                                                                                              //Increases the Score
  }
  else                                                                                                          //If you missed the shot 
  {
    if(speed<1)                                                                                                 //If speed is greater than 1, decreases the speed
    {
    speed=speed-1;
    }
    lives=lives-1;                                                                                              //Takes away one life
  }
  if(lost==true)                                                                                                //If the game is lost, resets and starts over
  {
    speed=1;                                                                                                    //Resets all variables to initial criteria
    lives=5;
    score=0;
    xPos=width/2;
    xDir=1;
    lost=false;
    loop();                                                                                                     //Begins looping draw() function again
  }
}
