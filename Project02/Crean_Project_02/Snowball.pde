//Snowball class
//Aidan Crean

class SnowBall extends Actor {
  
  public SnowBall() {
    super();
    x = random(0, width);
    y = 0;
    size = (int)random(10, 25);
    fillBlue = 255;
    fillRed = 255;
    fillGreen = 255;
    velocity = (int)random(5, 10);
  }
  
  public void drawBall() {
    fill(fillRed, fillGreen, fillBlue);
    stroke(penRed, penGreen, penBlue);
    ellipse(x, y, size, size);
  }
  
  public void act() {
    drawBall();
    move();
    if (y > height) {
      y = -20;
      velocity = (int)random(1, 10);
      x = (int)random(0, width);
    }
  }
  
}

