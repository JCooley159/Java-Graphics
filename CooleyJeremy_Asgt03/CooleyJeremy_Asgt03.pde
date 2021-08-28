/**
* Three balls bounce vertically. 
* The highest one is colored red and the others black.
*
* @author Jeremy Cooley
* @version 1.0 2/12/2020
*/ 


Ball ball1 = new Ball();
Ball ball2 = new Ball();
Ball ball3 = new Ball();
Ball[] balls = new Ball[3];
color red = color(255,0,0);
color black = color(0);


void setup()
{
    size(400,400);
    
    for (int i = 0; i < 3; i++)
    {
        balls[i] = new Ball();
    }
    
    balls[0].setXPos(100);
    balls[1].setXPos(200);
    balls[2].setXPos(300);
    
    
}

void draw()
{
    background(255);
    
    balls[0].move();
    balls[0].display();
    balls[1].move();
    balls[1].display();
    balls[2].move();
    balls[2].display();
    
    
    for (int i = 0; i < 3; i++)
    {
        if (balls[0].getYPos() < balls[1].getYPos() && balls[0].getYPos() < balls[2].getYPos())
        {
            balls[0].setColor(red);
            balls[1].setColor(black);
            balls[2].setColor(black);
        }
        else if (balls[1].getYPos() < balls[0].getYPos() && balls[1].getYPos() < balls[2].getYPos())
        {
            balls[1].setColor(red);
            balls[0].setColor(black);
            balls[2].setColor(black);
        }
        else if (balls[2].getYPos() < balls[0].getYPos() && balls[2].getYPos() < balls[1].getYPos())
        {
            balls[2].setColor(red);
            balls[0].setColor(black);
            balls[1].setColor(black);
        }
        
    }
    
    
}




class Ball
{
    float xPos;
    float yPos;
    color c;
    float yspeed;
    
    
    Ball()
    {
        this.xPos = 0;
        this.yPos = 200;
        this.c = color(0);
        this.yspeed = random(10);
    }
    
    Ball(float yPos)
    {
        this.xPos = 0;
        this.yPos = yPos;
        this.c = color(0);
        this.yspeed = random(10);
    }
    
    Ball(float xPos, float yPos, color c, float yspeed)
    {
        this.xPos = xPos;
        this.yPos = yPos;
        this.c = c;
        this.yspeed = yspeed;
    }
    
    
    public float getXPos() { return xPos; }
    public void setXPos(float xPos) { this.xPos = xPos; }
    
    public float getYPos() { return yPos; }
    public void setYPos(float yPos) { this.yPos = yPos; }
    
    public void setColor(color c) { this.c = c; }
    
    
    void move()
    {
        yPos = yPos + yspeed;
        if (yPos >= height || yPos < 0)
        {
            yspeed = -yspeed;
        }
    }
    
    void display()
    {
        fill(c);
        circle(xPos,yPos,20);
    }
    
    
    
    
}
