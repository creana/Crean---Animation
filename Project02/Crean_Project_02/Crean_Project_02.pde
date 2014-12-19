//Aidan Crean
//Actor Class: Project 02
//Main Class

SnowBall snow [] = new SnowBall[5];

Stan stan = new Stan(300, 280);
Actor ground = new Actor(0, 300);
Actor sun = new Actor(500, 60);


void setup() {
  size(600, 400);
  background(0, 0, 0);
  
  for (int i = 0; i < snow.length; i++) {
    snow[i] = new SnowBall();
    snow[i].direction = 90;
  }
  
  sun.velocity = 5;
  sun.direction = 50;
  
  //set stan's values
  stan.setColor(255, 255, 255);
  stan.setPenColor(0, 0, 0);
  stan.wid = 100;
  stan.hei = 100;
  stan.setDX(5);
  stan.setDY(5);
  stan.size = 5;

  //set ground values
  ground.setColor(70, 240, 80);
  ground.wid = 600;
  ground.hei = 100;
  
}

void draw() {
  background(0, 220, 255);
  
  ground.drawRect();
  
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == LEFT) {
        stan.dx = -10;
        stan.moveStan();
      }
      if (keyCode == RIGHT) {
        stan.dx = 10;
        stan.moveStan();
      }
    }
  }

  stan.drawStan();
  
  sun.move();
  sun.drawEllipse();
  sun.turn(3);
  
  for (int i = 0; i < snow.length; i++) {
    snow[i].act();
    snow[i].bounceActorHorizontal(stan);
  }
  
  text("Use the arrow keys to help Stan dodge the snowballs!", 160, 380, -20);
  

  
}
