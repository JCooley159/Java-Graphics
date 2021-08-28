float x;
float y;
float xspeed = 5;
float yspeed = 5;

void setup()
{
  size(600, 600);
  
  x = width / 2;
  y = height / 2;
  
  fill(255,0,0);
}

void draw()
{
  background(255);
  ellipse(x,y,20,20);
}

void keyPressed()
{
  if (keyCode == UP)
  {
    if (y > 10)
    {
      y = y - yspeed;
    }
  }
  
  else if (keyCode == LEFT)
  {
    if (x > 10)
    {
      x = x - xspeed;
    }
  }
  
  else if (keyCode == RIGHT)
  {
    if (x < width - 10)
    {
      x = x + xspeed;
    }
  }
  
  else if (keyCode == DOWN)
  {
    if (y < height - 10)
    {
      y = y + yspeed;
    }
  }
  
  else if (key == 'R')
  {
    x = width / 2;
    y = height / 2;
  }
  
}
