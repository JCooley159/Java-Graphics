/**
* duplicates the picture in the assignment
* 
* @author Jeremy Cooley
* @version 1.0 1/18/2020
*/ 

 
  void setup() 
  {
      size(500, 500);
           
      background(250);  // bg colour
      
      
      noStroke();             // no stroke
      fill(0, 255, 0, 100);   // green
      ellipseMode(CORNERS);
      ellipse(200, 350, 300, 450);
      
      fill(150);
      rectMode(CORNERS);
      rect(150,75,350,125);
      fill(0);
      textAlign(CENTER);
      textSize(32);
      text( "Submit", width/2, 115); 
      
      fill(100);
      rectMode(CORNERS);
      rect(150,175,350,225);
      fill(0);
      textAlign(CENTER);
      textSize(32);
      text( "Submit", width/2, 215);
      
      fill(200);
      rectMode(CORNERS);
      rect(150,275,350,325);
      fill(0);
      textAlign(CENTER);
      //textSize(32);
      text( "Submit", width/2, 315);
      
  } 

  void draw() 
  {
    
  }
