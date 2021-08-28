/**
 *  Draw two circles on screen moving in random directions straightly
 *  and will bounce off the border following law of physics. 
 *
 *  @author Jeremy Cooley
 *  @version 1.0 2/3/2020
 */


float x1;
float y1;

float x2;
float y2;

float x1speed;
float y1speed;

float x2speed;
float y2speed;

float distanceBetween;
float deltaX;
float deltaY;


void setup()
{
  size(600, 600);
  
  x1 = 25;
  y1 = 25;
  x2 = width - 25;
  y2 = height - 25;
  
  x1speed = random(1,10);     // circle 1 starts going right and down
  y1speed = random(1,10);
  x2speed = random(-10,-1);   // circle 2 starts going left and up
  y2speed = random(-10,-1);
  
  
}

void draw()
{
    background(255);
    
    deltaX = abs(x2 - x1);
    deltaY = abs(y2 - y1);
    distanceBetween = sqrt( pow(deltaX,2) + pow(deltaY,2) ); //  C = root(A^2 + B^2)
    
    
    // 20 distance means they're juuuust touching
    if (distanceBetween <= 20) 
    {
        // do NOTHING
    }
    else
    {
        // otherwise, do EVERYTHING
         
         
        // circle 1
        fill(255,0,0);
        ellipse(x1,y1,20,20);
        
        // circle 2
        fill(0,255,0);
        ellipse(x2,y2,20,20);
        
        
        
        if (x1 < 25 || x1 > width - 25)   // L & R bound of Circle 1
        {
            x1speed = -x1speed;
        }
        
        if (y1 < 25 || y1 > height - 25)   // T & B bound of Circle 1
        {
            y1speed = -y1speed;
        }
        
        if (x2 < 25 || x2 > width - 25)   // L & R bound of Circle 2
        {
            x2speed = -x2speed;
        }
        
        if (y2 < 25 || y2 > height - 25)   // T & B bound of Circle 2
        {
            y2speed = -y2speed;
        }
        
        
        // update position values
        x1 = x1 + x1speed;
        y1 = y1 + y1speed;
        x2 = x2 + x2speed;
        y2 = y2 + y2speed;
    }
    
}

void keyPressed()
{
  if (keyCode == 'R')
  {
      x1 = 25;
      y1 = 25;
      x2 = width - 25;
      y2 = height - 25;  
  }
  
}
