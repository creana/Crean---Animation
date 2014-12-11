//Aidan Crean
//Project 01

void drawStan(int x, int y, int s) {
  //ground
  fill(75, 200, 80);
  rect(x-30*s, y+10*s, 600*s, 100*s);
  //pants
  fill(50, 45, 240);
  rect(x-4.5*s, y+12.7*s, 9*s, 2*s);
  //coat
  fill(180, 150, 25);
  arc(x+4*s, y+9*s, 4*s, 7*s, 3*PI/2, PI/3);
  arc(x-4*s, y+9*s, 4*s, 7*s, 2*PI/3, 3*PI/2);
  rect(x-5*s, y+4*s, 10*s, 9*s);
  fill(0, 0, 0);
  //seam and buttons
  line(x+0*s, y+13*s, x+0*s, y+7*s);
  ellipse(x-1*s, y+9*s, .5*s, .5*s);
  ellipse(x-1*s, y+10.5*s, .5*s, .5*s);
  ellipse(x-1*s, y+12*s, .5*s, .5*s);
  //feet
  fill(0, 0, 0);
  arc(x+3*s, y+15*s, 6*s, 1*s, PI, 2*PI);
  arc(x-3*s, y+15*s, 6*s, 1*s, PI, 2*PI);
  //gloves
  fill(255, 0, 0);
  ellipse(x+5.5*s, y+11*s, 2.5*s, 2.5*s);
  ellipse(x-5.5*s, y+11*s, 2.5*s, 2.5*s);
  ellipse(x+4.5*s, y+10.5*s, 1*s, 1*s);
  ellipse(x-4.5*s, y+10.5*s, 1*s, 1*s);
  //collar
  ellipse(x+2*s, y+4*s, 7*s, 8*s);
  ellipse(x-2*s, y+4*s, 7*s, 8*s);
  //head
  fill(255, 240, 155);
  ellipse(x, y, 15*s, 15*s);
  //eyes
  fill(255, 255, 255);
  ellipse(x+2*s, y+0*s, 4*s, 4*s);
  ellipse(x-2*s, y+0*s, 4*s, 4*s);
  //pupils
  fill(0, 0, 0);
  ellipse(x+2*s, y+0*s, .7*s, .7*s);
  ellipse(x-2*s, y+0*s, .7*s, .7*s);
  //mouth
  fill(255, 240, 155);
  arc(x+0*s, y+5.25*s, 2.5*s, 1*s, PI, 2*PI);
  //hat
  fill(50, 45, 240);
  arc(x+0*s, y-2*s, 14.5*s, 11*s, PI, 2*PI);
  //hat fold
  fill(255, 0, 0);
  arc(x+0*s, y-2*s, 14.5*s, 2*s, PI, 2*PI);
  //hat puffball
  fill(255, 0, 0);
  ellipse(x+0*s, y-8*s, 3*s, 3*s);
}

void setup() {
  size(600, 400);
  background(0, 200, 255);
  drawStan(300, 150, 10);
}
