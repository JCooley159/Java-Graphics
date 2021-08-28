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
           
      background(255);  // bg colour = white
      
      
  } 

  void draw() 
  {
      ///////////////////////// top left
      stroke(0);
      if (mouseX >= 0 && mouseX <= width/2 && mouseY >= 0 && mouseY <= height/2)
      {
        fill(255, 0, 0);
      }
      else
      {
        fill(255);
      }
      rectMode(CORNERS);
      rect(0,0, width/2,height/2); 
     
     
      
      ///////////////////////////// top right
      stroke(0);
      if (mouseX >= width/2 && mouseX <= width  && mouseY >= 0 && mouseY <= height/2)
      {
        fill(255, 0, 0);
      }
      else
      {
        fill(255);
      }
      rectMode(CORNERS);
      rect(width/2,0, width,height/2); 
      
      
      
      /////////////////////////////  bot left
      stroke(0);
      if (mouseX >= 0 && mouseX <= width/2 && mouseY >= height/2 && mouseY <= height)
      {
        fill(255, 0, 0);
      }
      else
      {
        fill(255);
      }
      rectMode(CORNERS);
      rect(0,height/2, width/2, height);
      
      
      
      //////////////////////////
      stroke(0);
      if (mouseX >= width/2 && mouseX <= width && mouseY >= height/2 && mouseY <= height)
      {
        fill(255, 0, 0);
      }
      else
      {
        fill(255);
      }
      rectMode(CORNERS);
      rect(width/2,height/2, width, height);
      
  }
  
  
 
