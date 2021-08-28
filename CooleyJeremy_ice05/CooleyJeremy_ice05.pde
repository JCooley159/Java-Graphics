
Car car1 = new Car();
Car car2 = new Car();
Car car3 = new Car();
float [] arrayOfFloat = new float[100];
Car[] cars = new Car[3];

void setup()
{
    size(400,400);
    
    for (int i = 0; i < 3; i++)
    {
        cars[i] = new Car();
    }
    
    car1.setYPos(100);
    car2.setYPos(200);
    car3.setYPos(300);
    
    for (int i = 0; i < arrayOfFloat.length; i++)
    {
        arrayOfFloat[i] = random(100);
    }
    
}

void draw()
{
    background(255);
    
   // cars[0].move();
   // cars[0].display();
   car1.move();
   car1.display();
   car2.move();
   car2.display();
   car3.move();
   car3.display();
   
}




class Car
{
    float xPos;
    float yPos;
    color c;
    float xspeed;
    
    
    Car()
    {
        this.xPos = 0;
        this.yPos = 200;
        this.c = color(0);
        this.xspeed = random(10);
    }
    
    Car(float yPos)
    {
        this.xPos = 0;
        this.yPos = yPos;
        this.c = color(0);
        this.xspeed = random(10);
    }
    
    Car(float xPos, float yPos, color c, float xspeed)
    {
        this.xPos = xPos;
        this.yPos = yPos;
        this.c = c;
        this.xspeed = xspeed;
    }
    
    
    public float getXPos() { return xPos; }
    public void setXPos(float xPos) { this.xPos = xPos; }
    
    public float getYPos() { return yPos; }
    public void setYPos(float yPos) { this.yPos = yPos; }
    
    public void setColor(color c) { this.c = c; }
    
    
    void move()
    {
        xPos = xPos + xspeed;
        if (xPos>width)
        {
            xPos = 0;
            xspeed = random(2,10);
        }
    }
    
    void display()
    {
        fill(c);
        rectMode(CENTER);
        rect(xPos,yPos,20,10);
    }
    
    
    
    
}
