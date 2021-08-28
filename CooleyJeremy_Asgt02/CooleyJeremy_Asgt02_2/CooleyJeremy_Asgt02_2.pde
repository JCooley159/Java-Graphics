/**
* Creates and moves zoog
*
* @author Jeremy Cooley
* @version 1.0  2/3/2020
*/ 

int deltaX = 0;
int deltaY = 0;


 void setup() 
 {
   // Set the size of the window
   size(200,200);
 }
 
 void draw() 
 {
   // Draw a white background
   background(255);
   
   // Set CENTER mode
   ellipseMode(CENTER);
   rectMode(CENTER);
   
   // Draw Zoog's body
   stroke(0);
   fill(150);
   rect(100+deltaX, 100+deltaY, 20, 100);
   
   // Draw Zoog's head
   stroke(0);
   fill(255);
   ellipse(100+deltaX, 70+deltaY, 60, 60);
   
   // Draw Zoog's eyes
   fill(0);
   ellipse(81+deltaX, 70+deltaY, 16, 32);
   ellipse(119+deltaX, 70+deltaY, 16, 32);
   
   // Draw Zoog's legs
   stroke(0);
   line(90+deltaX, 150+deltaY, 80+deltaX, 160+deltaY);
   line(110+deltaX, 150+deltaY, 120+deltaX, 160+deltaY);
   
 } 
 
 
 
 void keyPressed()
{
  if (keyCode == UP)
  {
    if (deltaY > -35)
    {
      deltaY = deltaY - 5;
    }
  }
  
  if (keyCode == LEFT)
  {
    if (deltaX > -60)
    {
      deltaX = deltaX - 5;
    }
  }
  
  if (keyCode == RIGHT)
  {
    if (deltaX < 60)
    {
      deltaX = deltaX + 5;
    }
  }
  
  if (keyCode == DOWN)
  {
    if (deltaY < 35)
    {
      deltaY = deltaY + 5;
    }
  }
  
  if (keyCode == 'R')
  {
    deltaX = 0;
    deltaY = 0;
  }
  
}
