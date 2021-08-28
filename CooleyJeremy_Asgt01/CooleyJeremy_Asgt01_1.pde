/**
* duplicates the picture in the assignment
* 
* @author Jeremy Cooley
* @version 1.0 1/18/2020
*/ 

 
  void setup() 
  {
      size(500, 500);
           
      background(200);  // bg colour
      
      
      stroke(0);              // color, not the clot
      fill(0 ,255, 0, 255);   // specified in assignment
      beginShape();
      vertex(400, 400);       // bot right
      vertex(100, 400);       // bot left
      vertex(100, 100);       // top left
      vertex(400, 100);       // top right
      vertex(250, 250);       // middle middle, riddle riddle
      endShape(CLOSE);
  } 

  void draw() 
  {
    
  }
