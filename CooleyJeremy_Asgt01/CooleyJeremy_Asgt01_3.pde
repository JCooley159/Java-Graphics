/**
* draws a rectangle in the middle of the canvas. 
* Every time the user clicks the rectangle, the background 
* color behind the rectangle changes to a random color. 
* 
* @author Jeremy Cooley
* @version 1.0 1/18/2020
*/ 

 
  void setup() 
  {
      size(500, 500);
           
      background(250);  // bg colour
      
      
  } 

  void draw() 
  {
      stroke(0);
      fill(255);
      rectMode(CORNERS);
      rect(200,225, 300,275);
  }
  
  
  void mousePressed() 
  {
      if (mouseX >= 200 && mouseX <= 300)
      {
        if (mouseY >= 225 && mouseY <= 275)
        {
          background( random(0,255), random(0,255), random(0,255) );
        }
      }
  } 
