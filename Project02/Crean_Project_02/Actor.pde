//Actor Class
//Aidan Crean

class Actor {
  float x;
  float y;
  int fillRed = 0;
  int fillGreen = 0;
  int fillBlue = 0;
  int penRed = 0;
  int penGreen = 0;
  int penBlue = 0;
  int size = 50;
  int wid = 50;
  int hei = 50;
  float dx = 0;
  float dy = 0;
  
  float velocity = 0;
  float direction = 0;
  
  
  public Actor(float xPos, float yPos) {
    x = xPos;
    y = yPos;
    
  }
  
  public Actor () {
    
  }
  
  void setColor(int r, int g, int b) {
    fillRed = r;
    fillGreen = g;
    fillBlue = b;
  }
  
  void setPenColor(int r, int g, int b) {
    penRed = r;
    penGreen = g;
    penBlue = b;
  }
  
  void move() {
    computeVector();
    x = x + dx;
    y = y + dy;
  }
  
  void moveStan() {
    x = x + dx;
  }
  
  void goTo(float xPos, float yPos) {
    x = xPos;
    y = yPos;
  }
  
  void bounceEdge() {
    if (x > width || x < 0) {
     // dx = dx * -1;
     direction += 2 * (90 - direction);
    }
    if (y > height || y < 0) {
      // dy = dy * -1;
      direction += 2 * (0 - direction);
    }
  }
  
  void setDX(int xVel) {
    dx = xVel;
  }
  
    void setDY(int yVel) {
      
    dy = yVel;
  }
  
  void drawRect() {
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    rect(x, y, wid, hei);
  }
  
  void drawEllipse() {
    stroke(penRed, penGreen, penBlue);
    fill(255, 255, 60);
    ellipse(x, y, wid, hei);
  }
  
  void drawTriangle() {
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    triangle(x, y, x + wid, y, x + (wid/2), y - hei);
  }
  
  public boolean isTouching(Actor a) {
    boolean xTouch = ((x < a.x+a.wid) && (x > a.x));
    boolean yTouch = ((y < a.y+a.hei) && (y > a.y));
    if (xTouch && yTouch) {
      return true;
    }
    else {
      return false;
    }
  }
  
  void bounceActorHorizontal(Actor a) {
    if (isTouching(a)) {
      stop();
    }
  }
  
  void computeVector() {
    dx = velocity * 3*cos(radians(direction));
    dy = velocity * sin(radians(direction));
  }
  
  void turn(float t) {
    direction += t;
  }
  
}


